class ConferencesController < ApplicationController
  respond_to :html, :json, :xml
  before_action :get_conference, :only => [:show, :update, :destroy]


  def index
    @conferences = Conference.all
    respond_with @conferences
  end

  def new
    @conference = Conference.new
  end

  def show
    respond_with @conference
  end


  def create
    @conference = Conference.new(params[:conference])
    if @conference.save
      respond_with @conference
    else
      respond_with @conference
    end
  end

  def update
    @conference.update_attributes(params[:conference])
    puts @conference
    respond_with @conference
  end
  def destroy
    @conference.destroy
    respond_with @conference
  end
  private
  def get_conference
    @conference = Conference.find_by_id(params[:id])
  end
end
