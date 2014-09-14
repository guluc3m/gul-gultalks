class WizardController < ApplicationController
  include Wicked::Wizard

  steps :basic_info, :speaker, :detailed_info, :end

  def finish_wizard_path
    @event = Event.find(params[:event_id])
    @event.update_attributes(wizard_status: "complete")
    conference_path(params[:conference_id])
  end

  def create
    @event = Event.create(wizard_status: "new", title: "", description: "", summary: "")
    # Create session-wizard relation
    WizardSession.create(event_id: @event.id, session_id: session.id)
    redirect_to wizard_path(steps.first, event_id: @event.id)
  end

  def show
    @conference = Conference.friendly.find(params[:conference_id])
    if !@conference.call_for_papers_enabled || !WizardSession.exists?(event_id: params[:event_id], session_id: session.id) 
      redirect_to conference_path(@conference)
    else
      @event = Event.find(params[:event_id])
      render_wizard
    end
  end

  def update
    @conference = Conference.friendly.find(params[:conference_id])
    @event = Event.find(params[:event_id]) 

    @event.assign_attributes(params[:event])

    if step.to_s == "basic_info"
      @event.wizard_status = "basic"
      @event.conference_id = @conference.id
      @event.location = @conference.location
    elsif step.to_s == "detailed_info"
      @event.wizard_status = "detailed"
      @event.tag_list.add(@event.tags, parse: true)
    elsif step == steps.last
      @event.wizard_status = "end"
    end 

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
