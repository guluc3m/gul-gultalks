class ConferencesController < ApplicationController
    require 'will_paginate/array'
    respond_to :html, :json, :xml, :ics

    # Lists all the conferences present in the database.
    # May also return the information in JSON format.
    def index
        @conferences = Conference.all.order('start_date DESC')
        respond_with @conferences do |format|
            format.json { render text: Hash[@conferences.collect { |c| [c.id, Hash[c.events.collect { |e| [e.id, e] } ]] }].to_json }
        end
    end

    # Shows details on the given conference, its events and a calendar with said
    # events ordered by date and time.
    #
    # If ICS is specified in the request header, returns a .ics file for calendar
    # applications.
    def show
        @conference = Conference.friendly.find(params[:id])
        @calendar_events = @conference.events.where(shown: true, accepted: true)
        # FEATURE: replace with infinite scroll pagination
        @events = @conference.events.select{ |event| event.shown && event.verified }.sort_by(&:votes).reverse.paginate(page: params[:page], per_page: 1000)

        respond_with(@conference) do |format|
            format.ics { render text: @conference.to_ics }
        end
    end

    private

    def conference_params
        params.require(:conference).permit(:active, :call_for_papers_enabled, :call_for_papers_end_date, :call_for_papers_start_date, :coordinator, :description, :end_date, :location, :show_calendar, :slug, :start_date, :title, :voting_enabled, :voting_end_date, :voting_start_date)
    end
end

