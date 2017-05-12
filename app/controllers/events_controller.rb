class EventsController < ApplicationController
  include Gultalks::Commentable
  # helper_method :event, :events

  # Returns information on all publicly shown events for a given conference.
  #
  # Currently, this is only useful for API requests, as it returns the
  # information in either JSON or XML format. A normal request redirects the
  # user to the `show` method of the `conferences` controller.
  def index
    @conference = Conference.friendly.find(params[:conference_id])
    # events = @conference.events.where(shown: true, verified: true)
    redirect_to conference_path(@conference)
  end

  # Displays a view where the user can specify wheter they are proposing an
  # activity (basic information) or they want to impart that activity
  # (detailed information).
  def new
    @conference = Conference.friendly.find(params[:conference_id])
    unless @conference.call_for_papers_enabled
      redirect_to conference_path(@conference)
    end
  end

  # Shows a form where the user has to provide basic information for the
  # activity.
  def new_basic
    @conference = Conference.friendly.find(params[:conference_id])
    unless @conference.call_for_papers_enabled
      redirect_to conference_path(@conference) and return
    end

    @form = BasicEventForm.new(Event.new)
  end

  # Stores the basic activity information in the database.
  def create_basic
    @conference = Conference.friendly.find(params[:conference_id])
    unless @conference.call_for_papers_enabled
      redirect_to conference_path(@conference) and return
    end

    event = Event.new
    event.conference_id = @conference.id
    event.location = @conference.location
    # Event verification is disabled by default
    event.shown = true
    event.verified = true

    captcha_valid = verify_recaptcha

    @form = BasicEventForm.new(event)

    if @form.validate(params[:basic_event]) && captcha_valid
      @form.save
      render "thanks", locals: {event: event} and return
    end

    @form.errors.add :base, t("recaptcha.incorrect") if !captcha_valid
    render :new_basic
  end

  # Shows a form where the user has to provide detailed information for the
  # activity.
  def new_detailed
    @conference = Conference.friendly.find(params[:conference_id])
    unless @conference.call_for_papers_enabled
      redirect_to conference_path(@conference) and return
    end

    event = Event.new
    5.times { event.speakers.build }

    @form = DetailedEventForm.new(event)
  end

  # Stores the detailed activity information in the database.
  #
  # User can only specify a maximum of 5 speakers. If a speaker wants to
  # receive a certificate, a `Verifier` is created and its unique link
  # is mailed to them.
  def create_detailed
    @conference = Conference.friendly.find(params[:conference_id])
    unless @conference.call_for_papers_enabled
      redirect_to conference_path(@conference) and return
    end

    event = Event.new
    event.conference_id = @conference.id
    5.times { event.speakers.build }

    @form = DetailedEventForm.new(event)

    total_speakers = 0
    5.times do |i|
      if params[:detailed_event]["speakers_attributes"]["#{i}"]["name"].present?
        total_speakers += 1
      end
    end

    captcha_valid = verify_recaptcha
    speakers_valid = total_speakers > 0 && total_speakers < 6

    if @form.validate(params[:detailed_event]) && captcha_valid && speakers_valid
      @form.save do |nested|
        # Save event and tags
        new_event = Event.new(nested.except("speakers"))
        new_event.conference_id = @conference.id
        new_event.location = @conference.location
        # Event verification is disabled by default
        new_event.shown = true
        new_event.verified = true
        new_event.tag_list.add(nested["tags"], parse: true)
        new_event.save

        # Save speakers (only if name and email are present)
        nested["speakers"].each do |sp|
          if sp["name"].present? && sp["email"].present?
            new_speaker = Speaker.new
            new_speaker.event_id = new_event.id
            new_speaker.update_attributes(sp)
            new_speaker.save

            # Create verfier for certificate
            if new_speaker.certificate
              Verifier.create(
                email: new_speaker.email,
                event_id: new_speaker.event_id,
                verified: false,
                verify_type: "certificate")
            end
          end
        end

        new_event.send_edition_token
      end

      render "thanks", locals: { event: event } and return
    end

    @form.errors.add :base, t("recaptcha.incorrect") if !captcha_valid
    @form.errors.add :base, t("speaker.min_max") if !speakers_valid
    render :new_detailed
  end

  # Shows the details for an activity, as well as share buttons,comment forms
  # the option of proposing a speaker if there is none and a voting button
  # when conference voting is enabled.
  def show
    @conference = Conference.friendly.find(params[:conference_id])
    @event = Event.where(conference_id: @conference.id).friendly.find(params[:id])

    unless @event.shown
      redirect_to conference_path(@conference) and return
    end

    # @short_url = url_shortener(@conference, @event)
    @short_url = "http://google.com"
  end

  # Shows a form where the user can propose a speaker for an activity that
  # still does not have one.
  def propose_speaker
    @conference = Conference.friendly.find(params[:conference_id])
    @event = Event.where(conference_id: @conference.id).friendly.find(params[:id])

    if !@conference.call_for_papers_enabled || @event.speaker?
      redirect_to conference_event_path(@conference, @event) and return
    end

    @speaker = Speaker.new
  end

  # Stores the proposed speaker in the database.
  #
  # The speaker will receive a confirmation email with a `Verifier` link.
  def send_speaker
    @conference = Conference.friendly.find(params[:conference_id])
    @event = Event.where(conference_id: @conference.id).friendly.find(params[:id])

    if !@conference.call_for_papers_enabled || @event.speaker?
      redirect_to conference_event_path(@conference, @event) and return
    end

    permitted = params.require(:speaker).permit(:certificate, :email, :name, :twitter)
    @speaker = Speaker.new(permitted)
    @speaker.assign_attributes(event_id: @event.id, confirmed: false)

    captcha_valid = verify_recaptcha
    if @speaker.valid? && captcha_valid
      verifier = Verifier.new(
        email: @speaker.email,
        event_id: @speaker.event_id,
        verified: false,
        verify_type: "speaker")

      if @speaker.save && verifier.save
        render "thanks_speaker" and return
      end

      render :propose_speaker and return
    end

    @speaker.errors.add :base, t("recaptcha.incorrect") if !captcha_valid
    render :propose_speaker
  end

  # Shows the voting form.
  #
  # The user is asked for an email address where a `Verifier` will be sent in
  # order to confirm their vote.
  def vote
    @conference = Conference.friendly.find(params[:conference_id])
    @event = Event.where(conference_id: @conference.id).friendly.find(params[:id])

    # if Conference.friendly.find(params[:conference_id]).voting_enabled
    unless @conference.voting_enabled
      redirect_to conference_event_path(@conference, @event) and return
    end

    # Generate random key, pass the output as arg to Notifier
    # render :vote
  end

  # Generates the `Verifier` and sends the email to validate the vote
  def send_vote
    @conference = Conference.friendly.find(params[:conference_id])
    @event = Event.where(conference_id: @conference.id).friendly.find(params[:id])

    ver = Verifier.new(
      email: params[:email],
      event_id: @event.id,
      verified: false,
      verify_type: "vote")

    if verify_recaptcha
      if ver.save
        render "thanks_vote" and return
      end

      flash[:error] = t("vote.invalid_email")
      redirect_to action: "vote" and return
    end

    redirect_to action: "vote"
  end

  # Shows a form where the speaker can edit details on the activity
  def edit
    event = Event.find_by(token: params[:token])
    if event.nil?
      redirect_to root_path and return
    end

    @conference = Conference.friendly.find(event.conference_id)
    if !@conference.active
      redirect_to conference_path(@conference) and return
    end

    # Add as many speaker fields as needed
    (5 - event.speakers.count).times { event.speakers.build }

    @form = DetailedEventForm.new(event)
  end

  # Save the edited activity
  def save_edit
    event = Event.find_by(token: params[:token])
    if event.nil?
      redirect_to root_path and return
    end

    @conference = Conference.friendly.find(event.conference_id)
    if !@conference.active
      redirect_to conference_path(@conference) and return
    end

    # Original speakers
    original_sps = []
    event.speakers.each do |sp|
      original_sps.push(sp.email)
    end

    new_event = Event.new
    5.times { new_event.speakers.build }

    @form = DetailedEventForm.new(new_event)

    total_speakers = 0
    5.times do |i|
      if params[:detailed_event]["speakers_attributes"]["#{i}"]["name"].present?
        total_speakers += 1
      end
    end

    captcha_valid = verify_recaptcha
    speakers_valid = total_speakers > 0 && total_speakers < 6

    if @form.validate(params[:detailed_event]) && captcha_valid && speakers_valid
      @form.save do |nested|
        # Update event and tags
        event.update_attributes!(nested.except("speakers"))
        event.tag_list.add(nested["tags"], parse: true)

        # Update speakers (only if name and email are present and the speaker does not exist)
        new_sps = []

        nested["speakers"].each do |sp|
          if sp["name"].present? && sp["email"].present?
            # Skip existing speakers, but store them for comparison
            old_sp = Speaker.find_by(email: sp["email"], event_id: event.id)
            if !old_sp.nil?
              old_sp.update_attributes(sp)
              new_sps.push(old_sp.email)
              next
            end

            new_speaker = Speaker.new
            new_speaker.event_id = event.id
            new_speaker.update_attributes(sp)
            new_speaker.save

            new_sps.push(new_speaker.email)

            # Create verfier for certificate
            if new_speaker.certificate && Verifier.find_by(email: new_speaker.email, event_id: new_speaker.event_id).nil?
              Verifier.create(email: new_speaker.email, event_id: new_speaker.event_id, verified: false, verify_type: "certificate")
            end
          end
        end

        # Remove speakers that are not present in the new array
        diff = original_sps - new_sps

        diff.each do |sp|
            Speaker.where(event_id: event.id, email: sp).destroy_all()
        end
      end

      redirect_to conference_event_path(@conference, event) and return
    end

    @form.errors.add :base, t("recaptcha.incorrect") if !captcha_valid
    @form.errors.add :base, t("speaker.min_max") if !speakers_valid
    render :edit
  end

  #def new
  #  redirect_to new_conference_event_wizard_path
  #end

  #def create
  #  respond_with(event) do |format|
  #    format.html { render action: "thanks" }
  #  end
  #end

  #def update
  #  event.update_attributes(params[:event])
  #  respond_with event
  #end

  #def destroy
  #  event.destroy
  #  respond_with @event
  #end

  private
  # def event
  #   @conference = Conference.friendly.find(params[:conference_id])
  #   @event = if params[:action] =~ /new/
  #     Event.new(event_params)
  #   elsif params[:action] =~ /create/
  #     e = Event.new(event_params)
  #     e.conference_id = Conference.friendly.find(params[:conference_id]).id
  #     e.location = Conference.friendly.find(params[:conference_id]).location
  #     e.tag_list.add(params[:event][:tags], parse: true)
  #     e.save
  #     e
  #   else
  #     @shortened_url = conference_event_url(@conference
  #     Event.friendly.find(params[:id])
  #   end
  # end

  # def events
  #   if params[:conference_id]
  #     conference = Conference.friendly.find(params[:conference_id])
  #     @events = conference.events.all
  #   else
  #     @events = Event.all
  #   end
  # end

  #
  # Shorten given Url using bit.ly
  #
  def url_shortener(conference, event)
    begin
      bitly = Bitly.client
      url = bitly.shorten(conference_event_url(conference, event))
      url.short_url

    rescue
      # Bitly not properly configured?
      conference_event_url(conference, event)
    end
  end

  def event_params
    params.require(:event).permit(:accepted, :assisted_by, :cancelled, :conference_id, :code ,:content_url, :description, :duration, :end_dtime, :id, :language, :level, :location, :notes, :room, :shown, :slug, :start_dtime, :subclass, :summary, :tags, :title, :validation_email, :verified, :votes, speakers_attributes: [:certificate, :confirmed, :email, :event_id, :name, :twitter])
  end
end
