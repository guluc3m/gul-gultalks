require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gultalks
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be autoloadable.
    # config.autoload_paths += %W(#{config.root}/extras)

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named.
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running.
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # Use SQL instead of Active Record's schema dumper when creating the database.
    # This is necessary if your schema can't be completely dumped by the schema dumper,
    # like if you have constraints or database-specific column types
    # config.active_record.schema_format = :sql

    # Enforce whitelist mode for mass assignment.
    # This will create an empty whitelist of attributes available for mass-assignment for all models
    # in your app. As such, your models will need to explicitly whitelist or blacklist accessible
    # parameters by using an attr_accessible or attr_protected declaration.
    config.active_record.whitelist_attributes = false

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    config.middleware.use HttpAcceptLanguage::Middleware

    # Default mailer config
    # TODO: put it in secrets file?
    config.action_mailer.default_url_options = { host: Rails.application.secrets[:host]}

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    FaviconMaker.generate do

        BASE_IMAGE = "lynx_shield_negative_full.png"

        setup do
            template_dir  "app/assets/images"
            output_dir    "public"
        end

        from BASE_IMAGE do
            icon "apple-touch-icon-152x152-precomposed.png"
            icon "apple-touch-icon-144x144-precomposed.png"
            icon "apple-touch-icon-120x120-precomposed.png"
            icon "apple-touch-icon-114x114-precomposed.png"
            icon "apple-touch-icon-76x76-precomposed.png"
            icon "apple-touch-icon-72x72-precomposed.png"
            icon "apple-touch-icon-60x60-precomposed.png"
            icon "apple-touch-icon-57x57-precomposed.png"
            icon "apple-touch-icon-precomposed.png", size: "57x57"
            icon "apple-touch-icon.png", size: "57x57"
            icon "favicon-196x196.png"
            icon "favicon-160x160.png"
            icon "favicon-96x96.png"
            icon "favicon-32x32.png"
            icon "favicon-16x16.png"
            icon "favicon.png", size: "16x16"
            icon "favicon.ico", size: "64x64,32x32,24x24,16x16"
            icon "mstile-144x144", format: "png"
        end

        puts "Generating favicon assets..."
        # Verbose
        each_icon do |filepath|
            puts filepath
        end
    end

  end
end
