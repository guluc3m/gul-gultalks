class Talk < ActiveRecord::Base
  extend FriendlyId
 attr_accessible :active, :assisted_by, :brief_description, :comments, :conference_id, :content_url, :date, :description, :end_time, :level, :location, :room, :start_time, :speaker, :speaker_contact_info, :tags, :title, :votes
  belongs_to :conference
  friendly_id :title, :use => [:slugged, :scoped], :scope => :conference
end
