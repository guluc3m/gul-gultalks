class EventsController < ApplicationController
  helper_method :event, :events
  respond_to :html, :json, :xml

  def index
    respond_with(events) do |format|
      format.html { redirect_to :controller => "conferences", :action => "show", :id => params[:conference_id] }
      format.json { render json: events.as_json(methods: :tag_list) }
      format.xml { render xml: events.to_xml(methods: :tag_list) }
    end
  end

  def new
    respond_with event
  end

  def show
    respond_with(event) do |format|
      format.json { render json: event.as_json(methods: :tag_list) }
      format.xml { render xml: event.to_xml(methods: :tag_list) }
    end
  end

  def create
    Notifier.confirmation_event(event).deliver
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
      Notifier.confirmation_vote(event).deliver
      respond_with event
    else
      redirect_to :controller => "events", :action => "show", :id => params[:id]
    end
  end

  # def vote_old
  #   talk.update_attributes(vote: talk.vote + 1)
  #   respond_with thanks_vote
  #   Notifier.confirmation_vote(talk)
  # end

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
end
