class EventsController < ApplicationController
  include Gultalks::Commentable
  # helper_method :event, :events
  respond_to :html, :json, :xml

  def new
    @conference = Conference.friendly.find(params[:conference_id])
    if !@conference.call_for_papers_enabled
      redirect_to conference_path(@conference)
    end
  end

  def new_basic
    @conference = Conference.friendly.find(params[:conference_id])
    if !@conference.call_for_papers_enabled
      redirect_to conference_path(@conference)
    end

    @form = BasicEventForm.new(Event.new)
  end

  def create_basic
    @conference = Conference.friendly.find(params[:conference_id])
    puts @conference.inspect
    if !@conference.call_for_papers_enabled
      redirect_to conference_path(@conference)
    end

    event = Event.new
    event.conference_id = @conference.id
    # Event verification is disabled by default
    event.shown = true
    event.verified = true

    @form = BasicEventForm.new(event)
    if @form.validate(params[:basic_event]) && verify_recaptcha
      @form.save
      render "thanks"
    else
      render :new_basic
    end
  end

  def new_detailed
    @conference = Conference.friendly.find(params[:conference_id])
    if !@conference.call_for_papers_enabled
      redirect_to conference_path(@conference)
    end

    # @form = DetailedEventForm.new(Event.new)
    # @form = DetailedEventForm.new(Event.new(speakers: [Speaker.new, Speaker.new]))
    # event = Event.new
    # 2.times { event.speakers.build }
    # @form = DetailedEventForm.new(Event.new)
    @form = DetailedEventForm.new(Event.new(speakers: [Speaker.new]))
  end

  def create_detailed
    @conference = Conference.friendly.find(params[:conference_id])
    puts @conference.inspect
    if !@conference.call_for_papers_enabled
      redirect_to conference_path(@conference)
    end

    event = Event.new
    event.conference_id = @conference.id
    # Event verification is disabled by default
    event.shown = true
    event.verified = true

    @form = BasicEventForm.new(event)
    if @form.validate(params[:basic_event]) && verify_recaptcha
      @form.save
      render "thanks"
    else
      render :new_basic
    end
  end

  def show
    @event = Event.friendly.find(params[:id])
    @conference = Conference.friendly.find(params[:conference_id])
    @short_url = url_shortener(@conference, @event)

    if @event.shown
      respond_with(@event) do |format|
        format.json { render json: @event.as_json(methods: :tag_list) }
        format.xml { render xml: @event.to_xml(methods: :tag_list) }
        format.ics { render ics: @event.to_ics(methods: :tag_list) }
      end
    else
      redirect_to conference_path(@conference)
    end
  end

  def propose_speaker
    @event = Event.friendly.find(params[:id])
    @conference = Conference.friendly.find(params[:conference_id])

    # if Conference.friendly.find(params[:conference_id]).call_for_papers_enabled && !Event.friendly.find(params[:id]).speaker?
    #   respond_with(event) do |format|
    if @conference.call_for_papers_enabled && !@event.speaker?
      respond_to do |format|
        format.html { render action: "propose_speaker" }
      end
    else
      redirect_to conference_event_path(@conference, @event)
    end
  end

  def send_speaker
    # Used to generate the Verifier and send the email to validate/confirm the speaker
    @event = Event.friendly.find(params[:id])
    @conference = Conference.find(@event.conference_id)

    sp = Speaker.new(name: params[:name], email: params[:email], twitter: params[:twitter], certificate: params[:certificate], confirmed: false, event_id: @event.id)
    ver = Verifier.new(email: params[:email], event_id: @event.id, verified: false, verify_type: "speaker")

    if verify_recaptcha
      if sp.save && ver.save
        render "thanks_speaker"
      else
        flash[:error] = sp.errors.full_messages
        redirect_to action: "propose_speaker"
      end
    else
      redirect_to action: "propose_speaker"
    end
  end

  def vote
    @event = Event.friendly.find(params[:id])
    @conference = Conference.friendly.find(params[:conference_id])

    # if Conference.friendly.find(params[:conference_id]).voting_enabled
    if @conference.voting_enabled
      # Generate random key, pass the output as arg to Notifier
      # respond_with(event) do |format|
      respond_to do |format|
        format.html { render action: "vote" }
      end
    else
      redirect_to conference_event_path(@conference, @event)
    end
  end

  def send_vote
    # Used to generate the Verifier and send the email to validate the vote
    @event = Event.friendly.find(params[:id])
    @conference = Conference.find(@event.conference_id)

    ver = Verifier.new(email: params[:email], event_id: @event.id, verified: false, verify_type: "vote")

    if verify_recaptcha
      if ver.save
        render "thanks_vote"
      else
        flash[:error] = t("vote.invalid_email")
        redirect_to action: "vote"
      end
    else
      redirect_to action: "vote"
    end
  end

  #def index
  #  respond_with(events) do |format|
  #    format.html { redirect_to conference_path(params[:conference_id]) }
  #    format.json { render json: events.as_json(methods: :tag_list) }
  #    format.xml { render xml: events.to_xml(methods: :tag_list) }
  #  end
  #end

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
    bitly = Bitly.client
    url = bitly.shorten(conference_event_url(conference, event))
    url.short_url
  end

  def event_params
    params.require(:event).permit(:accepted, :assisted_by, :cancelled, :conference_id, :code ,:content_url, :description, :duration, :end_dtime, :id, :language, :level, :location, :notes, :room, :shown, :slug, :start_dtime, :subclass, :summary, :tags, :title, :validation_email, :verified, :votes, speakers_attributes: [:certificate, :confirmed, :email, :event_id, :name, :twitter])
  end
end
