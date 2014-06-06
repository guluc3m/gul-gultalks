class Talk < ActiveRecord::Base
  extend FriendlyId
 attr_accessible :active, :assisted_by, :brief_description, :comments, :conference_id, :content_url, :date, :description, :end_time, :id, :level, :location, :room, :start_time, :speaker, :speaker_contact_info, :tags, :title, :votes
  belongs_to :conference
  friendly_id :title, :use => [:slugged, :scoped], :scope => :conference

  validates :title,
            format: { with: /\A[a-z\W\d]+\z/i },
            presence: true,
            uniqueness: { scope: :conference }

  validates :brief_description,
            format: { with: /\A[a-z\W\d]+\z/i },
            presence: true

  validates :description,
            format: { with: /\A[a-z\W\d]+\z/i },
            presence: true

  validates :speaker_contact_info,
            allow_blank: true,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
            
end
