class TalksController < ApplicationController
  helper_method :talk, :talks
  respond_to :html, :json, :xml


  def index
    respond_with talks
  end

  def new
    respond_with talk
  end

  def show
    respond_with talk
  end

  def create
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

  private
  def talk
    @talk = if  params[:action] =~ /new/
      Talk.new(params[:talk])
    elsif params[:action] =~ /create/
      t=Talk.new(params[:talk])
      t.save
      t
    else
      Talk.find(params[:id])
    end
  end

  def talks
    @talks = Talk.all
  end
end
