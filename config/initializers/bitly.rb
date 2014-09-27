Bitly.configure do |config|
  config.api_version = 3
  config.login = Rails.application.secrets.bitly_user
  config.api_key = Rails.application.secrets.bitly_key
end
