class ApiController < ApplicationController
  respond_to :html, :json
  before_action :check_token!, only: :modify_conference

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

  # Modify conference attributes: open/close C4T and enable/disable/voting
  def modify_conference

    if not ['open_call', 'close_call', 'enable_voting', 'disable_voting'].include?(params[:task])
      render nothing: true, status: 404 and return
    end

    begin
      conference = Conference.friendly.find(params[:id])

    rescue ActiveRecord::RecordNotFound
      render json: {errors: 'conference not found'}, status: 404
      return
    end

    # Check action
    case params[:task]
    when 'open_call'
      conference.call_for_papers_enabled = true

    when 'close_call'
      conference.call_for_papers_enabled = false

    when 'enable_voting'
      conference.voting_enabled = true

    when 'disable_voting'
      conference.voting_enabled = false
    else
      # Unknown action
      render nothing: true, status: 404 and return
    end

    conference.save
    render nothing: true, status: 200
  end

  private

  # Check that the provided token exists
  def check_token!
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(token: token)
    end
  end
end
