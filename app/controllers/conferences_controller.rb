class ConferencesController < ApplicationController
  require 'will_paginate/array'
  helper_method :conference, :conferences
  respond_to :html, :json, :xml, :ics

  def index
    respond_with conferences
  end

  def show
    respond_with(conference) do |format|
      format.ics { render text: conference.to_ics }
    end
  end

  #def new
  #  respond_with conference
  #end

  #def create
  #  respond_with conference
  #end

  #def update
  #  conference.update_attributes(params[:conference])
  #   respond_with conference
  #end

  #def destroy
  #  conference.destroy
  #  respond_with @conference
  #end

  private
  def conference
    @conference = if params[:action] =~ /new/
      Conference.new(params[:conference])
    elsif params[:action] =~ /create/
      c = Conference.new(params[:conference])
      c.save
      c
    else
      @conference = Conference.friendly.find(params[:id])
      # TOFIX: json or xml must show all entries
      @calendar_events = @conference.events.where(shown: true, accepted: true)
      @paginated_events = @conference.events.select{ |event| event.speaker? && event.shown && event.verified }.paginate(page: params[:page], per_page: 8)
      @pending_events = @conference.events.select{ |event| !event.speaker? && event.shown && event.verified }
      @conference
    end
  end

  def conferences
    @conferences = Conference.all.order('start_date DESC')
  end
end
