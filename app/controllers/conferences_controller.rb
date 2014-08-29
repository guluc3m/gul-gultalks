class ConferencesController < ApplicationController
  helper_method :conference, :conferences
  respond_to :html, :json, :xml, :ics

  def index
    respond_with conferences
  end

  def new
    respond_with conference
  end

  def show
    respond_with(conference) do |format|
      format.ics { render text: conference.to_ics }
    end
  end

  def create
    respond_with conference
  end

  def update
    conference.update_attributes(params[:conference])
    respond_with conference
  end

  def destroy
    conference.destroy
    respond_with @conference
  end

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
      #TOFIX: json or xml must show all entries
      @calendar_events = @conference.events.where(shown: true, accepted: true)
      @paginated_events = @conference.events.where(shown: true).paginate(page: params[:page], per_page: 5)
      @conference
    end
  end

  def conferences
    @conferences = Conference.all.order('start_date DESC')
  end
end
