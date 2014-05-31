class ConferencesController < ApplicationController
  helper_method :conference, :conferences
  respond_to :html, :json, :xml


  def index
    conference = Conference.find_by active: 1
    if conference
      #redirect_to :controller => "talks", :action => "index", :conference => conference.id
      redirect_to :action => "show", :id => conference.id
    else
      respond_with conferences
    end
  end

  def new
    respond_with conference
  end

  def show
    respond_with conference
  end

  def thanks

  end

  def create
    respond_with conference
  end
  def update
    conference.update_attributes(params[:conference])
    respond_with conference
  end
  def destroy
    conference.destroy
    respond_with @conference
  end

  private
  def conference
    @conference = if params[:action] =~ /new/
      Conference.new(params[:conference])
    elsif params[:action] =~ /create/
      c=Conference.new(params[:conference])
      c.save
      c
    else
      Conference.find(params[:id])
    end
  end

  def conferences
    @conferences = Conference.all
  end
end
