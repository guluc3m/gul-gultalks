class Talk < ActiveRecord::Base
  attr_accessible :active, :assisted_by, :brief_description, :comments, :content_url, :creation_time, :day, :description, :end_time, :level, :room, :start_time, :tags, :teacher, :teacher_contact_info, :title, :votes
  belongs_to :conference
end
