class TalksController < ApplicationController
  
  def index 
    @talks = Talk.all
  end

  def new
    @talk = Talk.new
  end

  def show

  end

  def create
      @talk = Talk.new()
      @talk.save
      redirect_to @thaks
  end

end
