class Event < ActiveRecord::Base
  extend FriendlyId
  acts_as_taggable
 attr_accessible :active, :assisted_by, :brief_description, :comments, :conference_id, :content_url, :date, :description, :end_time, :id, :level, :location, :room, :start_time, :speaker, :speaker_contact_info, :tags, :title, :votes, :cancelled
  attr_accessor :tags
  belongs_to :conference
  friendly_id :title, :use => [:slugged, :scoped], :scope => :conference

  validates :title,
            format: { with: /\A[a-z0-9\W]+\z/i },
            presence: true,
            uniqueness: { scope: :conference }

  validates :brief_description,
            format: { with: /\A[a-z0-9\W]+\z/i },
            presence: true

  validates :description,
            format: { with: /\A[a-z0-9\W]+\z/i },
            presence: true

  validates :content_url,
            allow_blank: true,
            format: { with: /(https?|ftp|file|ssh):\/\/(((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?/ }

  validates :speaker,
            allow_blank: true,
            format: { with: /\A[a-z\W]+\z/i }

  validates :speaker_contact_info,
            allow_blank: true,
            format: { with: /.+@.+\..+/i }

  validates :comments,
            allow_blank: true,
            format: { with: /\A[a-z0-9\W]+\z/i }

  after_create :event_verify_email

  private
  def event_verify_email
      token = generate_token
      Notification.confirmation_event(self, token).deliver
  end

  def generate_token
      t = SecureRandom.urlsafe_base64
      t
  end
            
end
