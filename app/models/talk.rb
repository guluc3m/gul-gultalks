class Talk < ActiveRecord::Base
  extend FriendlyId
 attr_accessible :active, :assisted_by, :brief_description, :comments, :conference_id, :content_url, :date, :description, :end_time, :id, :level, :location, :room, :start_time, :speaker, :speaker_contact_info, :tags, :title, :votes
  belongs_to :conference
  friendly_id :slug_candidates, :use => [:slugged, :scoped], :scope => :conference

  def slug_candidates
    [
      :title,
      [:title, Talk.last.id+1]
    ]
  end
end
