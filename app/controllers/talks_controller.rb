class TalksController < ApplicationController
  respond_to :html, :json, :xml
  before_action :get_talk, :only => [:show,:update]

  def index 
    @talks = Talk.all
    respond_to do |format|
      format.json { render json: @talks }
      format.xml { render xml: @talks }
      format.html { respond_with @talks } 
    end
  end

  def new
    @talk = Talk.new
  end

  def show
    respond_to do |format|
      if @talk
        format.json { render json: @talk }
        format.xml { render xml: @talk }
        format.html { respond_with @talk }
      else
        format.json { render json: @talk.errors, status: :unprocessable_entity }
        format.xml { render xml: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
      @talk = Talk.new(params[:talk])
      respond_to do |format|
        if @talk.save
          format.html { render action: "thanks" }
          format.json { render json: @talk, status: :created }
          format.xml { render xml: @talk, status: :created }
       else
          format.html { render action: "new" }
          format.json { render json: @talk, status: :unprocessable_entity }
          format.xml { render xml: @talk, status: :unprocessable_entity }
        end
      end
      return
  end

  def update
    respond_to do |format|
      if @talk.update_attributes(params[:user])
        format.json { head :no_content, status: :ok }
        format.xml { head :no_content, status: :ok }
      else
        format.json { render json: @talk.errors, status: :unprocessable_entity }
        format.xml { render xml: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @talk.destroy
        format.json { head :no_content, status: :ok }
        format.xml { head :no_content, status: :ok }
      else
        format.json { render json: @talk.errors, status: :unprocessable_entity }
        format.xml { render xml: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def get_talk
    @talk = Talk.find_by_id(params[:id])
  end
end
