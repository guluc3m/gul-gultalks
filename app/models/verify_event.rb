class VerifyEvent < ActiveRecord::Base
  attr_accessible :event, :token, :email
  belongs_to :event

  TOKEN_LENGTH=32

   validates :token,
             #format: { with: /\A[a-z0-9\W]+\z/i },
             presence: true,
             #uniqueness: { scope: : }
             length: { is: TOKEN_LENGTH , message: 'Token no valid'},
             uniqueness: true

   validates :email,
             allow_blank: false,
             format: { with: /.+@.+\..+/i }

   after_create :vote_verify

   private
   def vote_verify
       token = generate_token
       Notifier.confirmation_vote(self, token).deliver
   end

   def generate_token
       self.t = SecureRandom.urlsafe_base64(TOKEN_LENGTH, false)
       generate_token if VerifyEvent.exist?(token: self.token)
   end
end
