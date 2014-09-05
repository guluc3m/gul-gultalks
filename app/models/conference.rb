class Conference < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :active, :call_for_papers_enabled, :call_for_papers_end_date, :call_for_papers_start_date, :coordinator, :description, :end_date, :location, :show_calendar, :slug, :start_date, :title, :voting_enabled, :voting_end_date, :voting_start_date
  has_many :events
  validates_presence_of :title, :description
  validates_uniqueness_of :title
  friendly_id :title, use: :slugged

  def to_ics
    calendar = Icalendar::Calendar.new
    self.events.where(accepted: true, cancelled: false).each do |e|
      new_event = calendar.event
      new_event.dtstart = e.start_dtime
      new_event.dtend = e.end_dtime
      new_event.summary = e.title
      new_event.description = e.summary
      new_event.location = "#{e.location} - #{e.room}"
      new_event.uid = e.slug
    end
    calendar.to_ical
  end

  private
  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
