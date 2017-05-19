class Speaker < ApplicationRecord
  belongs_to :event


#   validates :email,
#             presence: true,
#             allow_blank: false,
#             email: true,
#             uniqueness: {scope: [:event_id]}

#   validates :name,
#             presence: true,
#             allow_blank: false,
#             format: { with: /\A[a-z\W]+\z/i }

#   validates :twitter,
#             allow_blank: true,
#             twitter: true
  validates :name,
      presence: true,
      length: {
          minimum: 5,
          maximum: 64
          # too_short: I18n.t("errors.messages.too_short"),
          # too_long: I18n.t("errors.messages.too_long")
      },
      allow_blank: false,
      format: { with: /\A[a-z\W]+\z/i }

  validates :email,
      presence: true,
      length: {
          minimum: 5,
          maximum: 64
          # too_short: I18n.t("errors.messages.too_short"),
          # too_long: I18n.t("errors.messages.too_long")
      },
      allow_blank: false,
      email: true,
      uniqueness: {scope: [:event_id]}

  validates :twitter,
      allow_blank: true,
      twitter: true
end
