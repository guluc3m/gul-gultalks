class EventWizardController < ApplicationController
  include Wicked::Wizard

  steps :basic_info, :speaker, :detailed_info, :thanks

  def new
    event = WizardEvent.new

    session[:event_wizard] ||= {}
    session[:event_wizard][:event] = event.accessible_attributes

    redirect_to wizard_path(steps.first)
  end

  def show
    @event = WizardEvent.new(session[:event_wizard].try(:[], [:event]))
    @step = step

    render_wizard
  end

  def update
    @event = WizardEvent.new(session[:event_wizard][:event])
    if params[:event]
      @event.attributes = params[:event]
      if params[:event][:tags]
        session[:event_wizard][:tags] = params[:event][:tags]
      end
    end
    @event.conference_id = Conference.friendly.find(params[:conference_id]).id
    @event.location = Conference.friendly.find(params[:conference_id]).location

    @event.step = step
    @event.steps = steps
    @event.session = session

    render_wizard @event
  end
end
