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

  #validates :token,
  #          presence: true,
  #          uniqueness: true

  #validates :verified,
  #          presence: true

  #validates :verify_type,
  #          presence: true,
  #          allow_blank: false

  enum types: [:event, :speaker, :vote] 

   private
   def send_verification
       if self.verify_type.eql? "event"
         Notifier.confirmation_event(self).deliver
       elsif self.verify_type.eql? "vote"
         Notifier.confirmation_vote(self).deliver
       elsif self.verify_type.eql? "speaker"
         Notifier.confirmation_speaker(self).deliver
       end
   end

   def generate_token
       token = SecureRandom.urlsafe_base64(TOKEN_LENGTH, false)
       puts token
       generate_token if Verifier.exists?(token: token)
       self.token = token
   end
end
