class Event < ActiveRecord::Base
  extend FriendlyId
  acts_as_taggable
  attr_accessor :tags, :validation_email
  belongs_to :conference
  friendly_id :title, use: [:slugged, :scoped], scope: :conference
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :speakers
  accepts_nested_attributes_for :speakers, reject_if: :all_blank, allow_destroy: true

  TOKEN_LENGTH = 32

  validates :title,
      format: { with: /\A[a-z0-9\W]+\z/i },
      length: {
          minimum: 5,
          maximum: 128,
          too_short: I18n.t("errors.messages.too_short"),
          too_long: I18n.t("errors.messages.too_long")
      },
      presence: true,
      uniqueness: { scope: :conference }

  validates :summary,
      format: { with: /\A[a-z0-9\W]+\z/i },
      length: {
          minimum: 10,
          maximum: 128,
          too_short: I18n.t("errors.messages.too_short"),
          too_long: I18n.t("errors.messages.too_long")
      },
      presence: true

  validates :description,
      format: { with: /\A[a-z0-9\W]+\z/i },
      length: {
          minimum: 40,
          maximum: 1400,
          too_short: I18n.t("errors.messages.too_short"),
          too_long: I18n.t("errors.messages.too_long")
      },
      presence: true

  validates :content_url,
      url: true,
      length: {
          minimum: 5,
          maximum: 128,
          too_short: I18n.t("errors.messages.too_short"),
          too_long: I18n.t("errors.messages.too_long")
      },
      allow_blank: true

  validates :code_url,
      url: true,
      length: {
          minimum: 5,
          maximum: 128,
          too_short: I18n.t("errors.messages.too_short"),
          too_long: I18n.t("errors.messages.too_long")
      },
      allow_blank: true

  validates :notes,
      allow_blank: true,
      format: { with: /\A[a-z0-9\W]+\z/i }

  validates :language,
      allow_blank: true,
      inclusion: { in: I18n.t("event.languages").keys.collect {|l| l.to_s} }

  validates :subclass,
      presence: true


  enum duration: [:unspecified_duration, :t_0, :t_1, :t_2, :t_3, :t_4, :t_5]
  enum level: [:unspecified_level, :noob, :easy, :medium, :hard, :hacker]
  enum subclass: [:talk, :workshop]

  # TODO: if needed add a TOS acceptance message
  # validates :terms_of_service, acceptance: { accept: 'yes' }

  # List of confirmed speakers
  def speaker_list
      return Speaker.where(event_id: self, confirmed: true)
  end

  # Whether the event has at least one confirmed speaker or not
  def speaker?
      speaker = Speaker.where(event_id: self, confirmed: true).first
      return speaker.nil? ? false : true
  end

  # Generate and send an edition token to the first speaker in the list
  # or the provided Speaker
  def send_edition_token(speaker = nil)
    if not speaker
      speaker = Speaker.where(event_id: self, confirmed: true).first
      if speaker.nil?
          return false
      end
    end

    generate_token
    Notifier.send_edition_token(self, speaker).deliver
  end

  private

  # (Re)generate the slug where needed
  def should_generate_new_friendly_id?
      slug.blank? || title_changed?
  end

  def generate_token
    token = SecureRandom.urlsafe_base64(TOKEN_LENGTH, false)
    generate_token if Event.exists?(token: token)
    self.token = token
    self.save
  end
end
