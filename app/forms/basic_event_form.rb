class BasicEventForm < Reform::Form

  property :title
  property :summary
  property :description
  property :subclass

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

  validates :subclass,
      presence: true
end
