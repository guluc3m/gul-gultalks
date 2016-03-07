class Verifier < ActiveRecord::Base
  after_create :send_verification
  before_create :generate_token

  TOKEN_LENGTH=32

  validates :email,
            presence: true,
            allow_blank: false,
            email: true,
            uniqueness: {scope: [:event_id, :verify_type]}

  validates :event_id,
            presence: true,
            allow_blank: false

  enum types: [:certificate, :speaker, :vote]

  private

  def send_verification
    case self.verify_type
    when "certificate"
      Notifier.confirmation_certificate(self).deliver
    when "vote"
      Notifier.confirmation_vote(self).deliver
    when "speaker"
      Notifier.confirmation_speaker(self).deliver
    else
      return false
    end
  end

  def generate_token
    token = SecureRandom.urlsafe_base64(TOKEN_LENGTH, false)
    generate_token if Verifier.exists?(token: token)
    self.token = token
  end
end
