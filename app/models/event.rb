class Event < ActiveRecord::Base
  extend FriendlyId
  acts_as_taggable
  attr_accessor :tags, :validation_email
  belongs_to :conference
  friendly_id :title, use: [:slugged, :scoped], scope: :conference
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :speakers
  # accepts_nested_attributes_for :speakers, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :speakers

  # validates :title,
  #     format: { with: /\A[a-z0-9\W]+\z/i },
  #     length: {
  #         minimum: 5,
  #         maximum: 128,
  #         too_short: I18n.t("errors.messages.too_short"),
  #         too_long: I18n.t("errors.messages.too_long")
  #     },
  #     presence: true,
  #     uniqueness: { scope: :conference },
  #     if: :complete_or_basic?

  # validates :summary,
  #     format: { with: /\A[a-z0-9\W]+\z/i },
  #     length: {
  #         minimum: 10,
  #         maximum: 128,
  #         too_short: I18n.t("errors.messages.too_short"),
  #         too_long: I18n.t("errors.messages.too_long")
  #     },
  #     presence: true,
  #     if: :complete_or_basic?

  # validates :description,
  #     format: { with: /\A[a-z0-9\W]+\z/i },
  #     length: {
  #         minimum: 40,
  #         maximum: 1400,
  #         too_short: I18n.t("errors.messages.too_short"),
  #         too_long: I18n.t("errors.messages.too_long")
  #     },
  #     presence: true,
  #     if: :complete_or_basic?

  # validates :content_url,
  #     url: true,
  #     length: {
  #         minimum: 5,
  #         maximum: 128,
  #         too_short: I18n.t("errors.messages.too_short"),
  #         too_long: I18n.t("errors.messages.too_long")
  #     },
  #     allow_blank: true,
  #     if: :complete_or_detailed?

  # validates :code,
  #     url: true,
  #     length: {
  #         minimum: 5,
  #         maximum: 128,
  #         too_short: I18n.t("errors.messages.too_short"),
  #         too_long: I18n.t("errors.messages.too_long")
  #     },
  #     allow_blank: true,
  #     if: :complete_or_detailed?

  # validates :notes,
  #     allow_blank: true,
  #     format: { with: /\A[a-z0-9\W]+\z/i },
  #     if: :complete_or_detailed?

  # validates :language,
  #     allow_blank: true,
  #     inclusion: { in: I18n.t("event.languages").keys.collect {|l| l.to_s} },
  #     if: :complete_or_detailed?

  # validates :subclass,
  #     presence: true,
  #     if: :complete_or_basic?


  enum duration: [:unspecified_duration, :t_0, :t_1, :t_2, :t_3, :t_4, :t_5]
  enum level: [:unspecified_level, :noob, :easy, :medium, :hard, :hacker]
  enum subclass: [:talk, :workshop]

  # #validates :terms_of_service, acceptance: { accept: 'yes' }

  # after_save :send_verifiers

  #
  # List of confirmed speakers
  #
  def speakers
      return Speaker.where(event_id: self, confirmed: true)
  end

  #
  # Whether the event has at least one confirmed speaker or not
  #
  def speaker?
      sp = Speaker.where(event_id: self, confirmed: true).first
      if sp.nil?
          return false
      else
          return true
      end
  end

  private

  #
  # Send verifiers (if any)
  # Event verification is disabled by default
  #
  def send_verifiers
    # Verifier.create(email: validation_email, event_id: self.id, verified: false, verify_type: "event")
    Speaker.where(event_id: self, certificate: true).map do |sp|
      Verifier.create(email: sp.email, event_id: self.id, verified: false, verify_type: "certificate")
    end

    self.update_attributes(verified: true, shown: true)
  end

  #
  # (Re)generate the slug where needed
  #
  def should_generate_new_friendly_id?
      slug.blank? || title_changed?
  end
end
