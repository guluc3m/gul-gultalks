class WizardController < ApplicationController
  include Wicked::Wizard

  steps :basic_info, :speaker, :detailed_info, :end

  def finish_wizard_path
    conference_path(params[:conference_id])
  end

  def create
    @event = Event.create(wizard_status: "new", title: "", description: "", summary: "")
    redirect_to wizard_path(steps.first, event_id: @event.id)
  end

  def show
    @conference = Conference.friendly.find(params[:conference_id])
    if !@conference.call_for_papers_enabled
      redirect_to conference_path(@conference)
    else
      @event = Event.find(params[:event_id])
      render_wizard
    end
  end

  def update
    @conference = Conference.friendly.find(params[:conference_id])
    @event = Event.find(params[:event_id]) 

    if step.to_s == "basic_info"
      @event.update_attributes(wizard_status: "basic")
      @event.update_attributes(conference_id: @conference.id)
      @event.update_attributes(location: @conference.location)
    elsif step.to_s == "detailed_info"
      @event.update_attributes(wizard_status: "detailed")
    elsif step == steps.last
        @event.update_attributes(wizard_status: "end")
    end 

    @event.update_attributes(params[:event])

    do_step @event
  end

  private
  def do_step(event)
    if step == steps.last
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
