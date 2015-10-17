class HomeController < ApplicationController
  respond_to :html, :json, :xml

  # Accessing the root redirects to the currently active conference or to the
  # list of (past) conferences is there is no active one.
  def index
    conference = Conference.find_by active: true
    if conference
      redirect_to conference_path(conference) and return
    end

    redirect_to conferences_path
  end
end
