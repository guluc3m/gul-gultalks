class HomeController < ApplicationController
  respond_to :html, :json, :xml

  def index
    conference = Conference.find_by active: true
    if conference
      redirect_to conference_path(conference)
    else
      redirect_to conferences_path
    end
  end
end
