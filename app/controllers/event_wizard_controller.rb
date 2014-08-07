class EventWizardController < ApplicationController
  include Wicked::Wizard

  steps :basic_info, :speaker, :detailed_info, :thanks

  def finish_wizard_path
    conference_path(params[:conference_id])
  end

  def new
    event = WizardEvent.new

    session["event_wizard"] ||= {}
    session["event_wizard"]["event"] = event.accessible_attributes

    redirect_to wizard_path(steps.first)
  end

  def show
    if !Conference.friendly.find(params[:conference_id]).active
      redirect_to conference_path(params[:conference_id])
    else
      @event = WizardEvent.new(session["event_wizard"].try(:[], ["event"]))
      @step = step

      render_wizard
    end
  end

  def update
    @event = WizardEvent.new(session["event_wizard"]["event"])
    if params[:event]
      @event.attributes = params["event"]
      if params[:event][:tags]
        session["event_wizard"]["tags"] = params[:event][:tags]
      end
    end
    @event.conference_id = Conference.friendly.find(params[:conference_id]).id
    @event.location = Conference.friendly.find(params[:conference_id]).location

    @event.step = step
    @event.steps = steps
    @event.session = session

    do_step(@event)
  end

  def do_step(event)
    if event.step == event.steps.last
      # Last step, need to verify reCAPTCHA
      if verify_recaptcha
        # Valid reCAPTCHA
        render_wizard event
      else
        # Invalid reCAPTCHA
        render_wizard
      end
    else
      # Don't need to verify anything
      render_wizard event
    end
  end    
end
