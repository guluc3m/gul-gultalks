class TalksController < ApplicationController
  
  def index 
    @talks = Talk.all
  end

  def new
    @talk = Talk.new
  end

  def show

  end

  def thanks

  end

  def create
      @talk = Talk.new(params[:talk])
      if @talk.save
        #TOFIX 
        redirect_to @thanks
      else
        render 'new'
      end
  end

end
