namespace :cleanup do
  desc "removes incomplete events from the database"
  task :events => :environment do
    # Find events that are one day old and incomplete
    incomplete_events = Event.where("DATE(updated_at) < DATE(?)", Date.yesterday).where("wizard_status is not 'complete'")

    incomplete_events.map do |event|
      # Delete sessions
      WizardSession.find_by(event_id: event.id).destroy
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
