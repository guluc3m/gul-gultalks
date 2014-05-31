class HomeController < ApplicationController
  respond_to :html, :json, :xml

  def index
    conference = Conference.find_by active: 1
    if conference
      redirect_to :controller => 'conferences', :action => 'show', :id => conference.id
    else
      redirect_to :controller => 'conferences', :action => 'index'
    end
  end
end
