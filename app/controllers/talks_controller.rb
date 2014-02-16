class TalksController < ApplicationController
  
  def index 
    @talks = Talk.all
  end

  def new
    @talk = Talk.new
  end

  def show
    @talk = Talk.find(params[:id])
  end

  def create
      @talk = Talk.new(params[:talk])
      @talk.save
      render 'thanks'
  end

end
