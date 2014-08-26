class EventsController < ApplicationController
  include Gultalks::Commentable
  helper_method :event, :events
  respond_to :html, :json, :xml

  def index
    respond_with(events) do |format|
      format.html { redirect_to conference_path(params[:conference_id]) }
      format.json { render json: events.as_json(methods: :tag_list) }
      format.xml { render xml: events.to_xml(methods: :tag_list) }
    end
  end

  def new
    redirect_to new_conference_event_wizard_path
  end

  def show
    respond_with(event) do |format|
      format.json { render json: event.as_json(methods: :tag_list) }
      format.xml { render xml: event.to_xml(methods: :tag_list) }
      format.ics { render ics: event.to_ics(methods: :tag_list) }
    end
  end

  def create
    respond_with(event) do |format|
      format.html { render action: "thanks" }
    end
  end

  def update
    event.update_attributes(params[:event])
    respond_with event
  end

  def destroy
    event.destroy
    respond_with @event
  end

  def vote
    if Conference.friendly.find(params[:conference_id]).voting_enabled
      # Generate random key, pass the output as arg to Notifier
      respond_with(event) do |format|
        format.html { render action: "vote" }
      end
    else
      redirect_to conference_event_path(params[:conference_id], params[:id])
    end
  end

  def send_vote
    # Used to generate the Verifier and send the email to validate the vote
    ver = Verifier.new(email: params[:email], event_id: Event.friendly.find(params[:id]).id, verified: false, verify_type: "vote")

    if ver.save
      render "thanks_vote"
    else
      flash[:error] = t("vote.invalid_email")
      redirect_to action: "vote"
    end
  end

  def event
    @event = if params[:action] =~ /new/
      Event.new(params[:event])
    elsif params[:action] =~ /create/
      e = Event.new(params[:event])
      e.conference_id = Conference.friendly.find(params[:conference_id]).id
      e.location = Conference.friendly.find(params[:conference_id]).location
      e.tag_list.add(params[:event][:tags], parse: true)
      e.save
      e
    else
      Event.friendly.find(params[:id])
    end
  end

  def events
    if params[:conference_id]
      conference = Conference.friendly.find(params[:conference_id])
      @events = conference.events.all
    else
      @events = Event.all
    end
  end

  def event_params
    params.require(:event).permit(speakers_attributes: [:id, :email, :name, :surname, :_destroy])
  end
end
