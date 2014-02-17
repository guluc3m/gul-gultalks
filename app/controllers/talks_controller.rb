class TalksController < ApplicationController
  respond_to :html, :json, :xml
  before_action :get_talk, :only => [:show,:update]

  def index 
    @talks = Talk.all
    respond_with @talks
  end

  def new
    @talk = Talk.new
  end

  def show
    respond_with @talk
  end

  def thanks

  end

  def create
      @talk = Talk.new(params[:talk])
      if @talk.save
        respond_with @talk
        #TOFIX 
        redirect_to :thanks
      else
        respond_with @talk
        render 'new'
      end
  end
  def update
    @talk.update_attributes(params[:talk])
    respond_with @talk
  end
  def destroy
    @talk.destroy
    respond_with @talk
  end
  private
  def get_talk
    @talk = Talk.find_by_id(params[:id])
  end
end
