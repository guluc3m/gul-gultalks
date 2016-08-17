class ApiKey < ActiveRecord::Base
  before_create :generate_token

  TOKEN_LENGTH = 32


  private

  def generate_token
    begin
      token = SecureRandom.urlsafe_base64(TOKEN_LENGTH, false)
    end while ApiKey.exists?(token: token)

    self.token = token
  end
end
