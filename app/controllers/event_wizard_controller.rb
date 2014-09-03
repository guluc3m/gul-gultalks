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
    @conference = Conference.friendly.find(params[:conference_id])
    if !@conference.active
      redirect_to conference_path(@conference)
    else
      @event = WizardEvent.new(session["event_wizard"].try(:[], ["event"]))
      @step = step

      render_wizard
    end
  end

  def update
    @conference = Conference.friendly.find(params[:conference_id])
    @event = WizardEvent.new(session["event_wizard"]["event"])
    if params[:event]
      @event.attributes = params["event"]
      # Event taggings
      if params[:event][:tags]
        session["event_wizard"]["tags"] = params[:event][:tags]
      end
      # Email used for validation
      if params[:event][:validation_email]
        session["event_wizard"]["validation_email"] = params[:event][:validation_email]
      end
      # Speakers for the event
      if params[:event][:speakers_attributes]
        session["event_wizard"]["speakers_attributes"] = params[:event][:speakers_attributes]
      end
    end

    @event.conference_id = @conference.id
    @event.location = @conference.location

    @event.step = step
    @event.steps = steps
    @event.session = session
    @event.validations = validations

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

  def validations
    {
      basic_info: [:title, :brief_description, :description],
      detailed_info: [:content_url, :notes, :language],
      speaker: [],
      thanks: [:title, :brief_description, :description, :content_url, :notes, :language]
    }
  end
end
