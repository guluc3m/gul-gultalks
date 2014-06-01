class Talk < ActiveRecord::Base
  attr_accessible :active, :assisted_by, :brief_description, :comments, :content_url, :date, :description, :end_time, :level, :location, :room, :start_time, :speaker, :speaker_contact_info, :tags, :title, :votes
  belongs_to :conference
end
