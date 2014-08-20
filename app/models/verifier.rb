class Verifier < ActiveRecord::Base
  after_create :send_verification
  before_create :generate_token
  attr_accessible :email, :event_id, :token, :verified, :verify_type

  TOKEN_LENGTH=32

  validates :email,
            presence: true,
            allow_blank: false,
            email: true

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


   private
   def send_verification
       if self.verify_type.eql? "event"
         Notifier.confirmation_event(Event.find(self.event_id), token).deliver
       elsif self.verify_type.eql? "vote"
         Notifier.confirmation_vote(Event.find(self.event_id), token).deliver
       end
   end

   def generate_token
       token = SecureRandom.urlsafe_base64(TOKEN_LENGTH, false)
       puts token
       generate_token if Verifier.exists?(token: token)
       self.token = token
   end
end
