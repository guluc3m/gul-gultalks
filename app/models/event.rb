class Event < ActiveRecord::Base
  extend FriendlyId
  acts_as_taggable
 attr_accessible :active, :assisted_by, :brief_description, :comments, :conference_id, :content_url, :date, :description, :end_time, :id, :level, :location, :room, :slug, :start_time, :speaker, :speaker_contact_info, :subclass, :tags, :title, :votes, :cancelled
  attr_accessor :tags
  belongs_to :conference
  friendly_id :title, use: [:slugged, :scoped], scope: :conference

  TOKEN_LENGTH=32

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
            url: true,
            allow_blank: true
            
            #format: { with: /(https?|ftp|file|ssh):\/\/(((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?/ }

  validates :speaker,
            allow_blank: true,
            format: { with: /\A[a-z\W]+\z/i }

  validates :speaker_contact_info,
            email: true,
            allow_blank: true,
            #format: { with: /.+@.+\..+/i }

  validates :comments,
            allow_blank: true,
            format: { with: /\A[a-z0-9\W]+\z/i }

  #validates :language,
  #          allow_blank: false

  enum level: [:noob, :easy, :medium, :hard, :hacker]
  enum subclass: [:talk, :workshop]
  
  #validates :terms_of_service, acceptance: { accept: 'yes' }

  #before_create :lang_filter

  after_create :verify_event


  #def to_ics
  #  event = Icalendar::Event.new
  #  event.start = self.date.strftime("%Y%m%dT%H%M%S")
  #  event.end = self.end_date.strftime("%Y%m%dT%H%M%S")
  #  event.summary = self.title
  #  event.description = self.summary
  #  event.location = self.location
  #  event.klass = "PUBLIC"
  #  event.created = self.created_at
  #  event.last_modified = self.updated_at
  #  event.uid = event.url = "#{PUBLIC_URL}events/#{self.id}"
  #  event.add_comment("AF83 - Shake your digital, we do WowWare")
  #  event
  #end


  private
  #def generate_token
  #    self.t = SecureRandom.urlsafe_base64(32, false)
  #    generate_token if VerifyEvent.exist?(token: self.token)
  #end

  def generate_token
        t = SecureRandom.urlsafe_base64
        t
  end

  def lang_filter
    I18n.t("event.languages").keys.include?(:language)
  end

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end

  def verify_event
      unless self.speaker_contact_info.blank?
        token = generate_token
        Notifier.confirmation_event(self, token).deliver
      end
  end
end
