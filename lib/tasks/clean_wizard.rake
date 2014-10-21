namespace :cleanup do
  desc "removes incomplete events from the database"
  task :events => :environment do
    # Find events that are one day old and incomplete
    incomplete_events = Event.where("updated_at < ? AND wizard_status != 'complete'", 24.hours.ago)

    incomplete_events.map do |event|
      # Delete sessions
      wizard_session = WizardSession.find_by(event_id: event.id)
      wizard_session.destroy unless wizard_session.blank?
      # Delete tags
      event.tag_list.remove
      # Delete speakers
      Speaker.where(event_id: event.id).map do |speaker|
        speaker.destroy
      end
      # Delete event
      event.destroy
    end
  end
end
