class TalksController < ApplicationController
  helper_method :talk, :talks
  respond_to :html, :json, :xml

  def index
    respond_with(talks) do |format|
      format.html { redirect_to :controller => "conferences", :action => "show", :id => params[:conference_id] }
    end
  end

  def new
    respond_with talk
  end

  def show
    respond_with talk
  end

  def create
    Notifier.confirmation_talk(talk).deliver
    respond_with(talk) do |format|
      format.html { render action: "thanks" }
    end
  end

  def update
    talk.update_attributes(params[:talk])
    respond_with talk
  end

  def destroy
    talk.destroy
    respond_with @talk
  end

  def vote
    if Conference.friendly.find(params[:conference_id]).voting_enabled
      # Generate random key, pass the output as arg to Notifier
      Notifier.confirmation_vote(talk).deliver
      respond_with talk
    else
      redirect_to :controller => "talks", :action => "show", :id => params[:id]
    end
  end

  # def vote_old
  #   talk.update_attributes(vote: talk.vote + 1)
  #   respond_with thanks_vote
  #   Notifier.confirmation_vote(talk)
  # end

  private
  def talk
    @talk = if params[:action] =~ /new/
      Talk.new(params[:talk])
    elsif params[:action] =~ /create/
      t = Talk.new(params[:talk])
      t.conference_id = Conference.friendly.find(params[:conference_id]).id
      t.location = Conference.friendly.find(params[:conference_id]).location
      t.tag_list.add(params[:talk][:tags], parse: true)
      t.save
      t
    else
      Talk.friendly.find(params[:id])
    end
  end

  def talks
    if params[:conference_id]
      conference = Conference.friendly.find(params[:conference_id])
      @talks = conference.talks.all
    else
      @talks = Talk.all
    end
  end
end
