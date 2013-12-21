class TalksController < ActiveRecord::Base
  def new
    @talk = Talk.new
    render template: "talks/new"
  end
  def index
    @talk = Talk.new
    render template: "talks/new"
  end
end
