class ApiController < ApplicationController
    respond_to :html, :json

    # Return a list of all the conferences in the application
    def conferences
        @conferences = Conference.all.order('start_date DESC')

        render json: @conferences
    end

    # Return a list of accepted events for the given conference
    def conference_events
        begin
          conference = Conference.friendly.find(params[:id])

        rescue ActiveRecord::RecordNotFound
            render json: {errors: 'conference not found'}, status: 404
            return
        end

        @events = conference.events.where(shown: true, verified: true)

        render json: @events
    end
end
