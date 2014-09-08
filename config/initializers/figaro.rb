# Require environment variable keys when starting
Figaro.require_keys("secret_key_base", "recaptcha_public_key", "recaptcha_private_key", "recaptcha_proxy")
