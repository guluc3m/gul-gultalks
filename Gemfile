source 'https://rubygems.org'
ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5'

# Use sqlite3 as the database for Active Record
group :development, :test do
    gem 'sqlite3'
    gem 'better_errors'
    #gem 'quiet_assets'
    gem 'binding_of_caller'
    gem 'guard-livereload', require: false
    gem 'rails-perftest', '~> 0.0.6'
    gem 'mina'

    # Use debugger
    # gem 'debugger', group: [:development, :test]
    # gem 'meta_request'
end

# Use mysql2 for production environment
group :production do
    # Rails bug <https://github.com/rails/rails/issues/21544>
    gem 'mysql2', '~> 0.3.18'
    gem 'unicorn'
end

group :doc do
    # bundle exec rake doc:rails generates the API under doc/api.
    gem 'sdoc', require: false
end

# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# `attr_accessible` no longer belongs in Rails
#gem 'protected_attributes'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Frontend
gem 'font-awesome-rails'
gem 'foundation-rails'
#gem 'foundation_rails_helper'
gem 'modernizr-rails'
gem 'haml-rails'
gem 'rails-i18n'
# http accept language to have the locale set from browser
gem 'http_accept_language'
# SEO friendly URLs
gem 'friendly_id', '~> 5.0.0'
# Tags
gem 'acts-as-taggable-on'
# Rails Admin
gem 'rails_admin'
gem 'devise'
gem 'devise-i18n'
gem 'activevalidators'
# New event form
gem 'reform'
# iCalendar
gem 'icalendar'
# reCAPTCHA
gem 'recaptcha', '0.4.0', :require => 'recaptcha/rails'
# User authentication
gem 'cancancan', '~> 1.9'
gem 'prawn'
# Public comments
gem 'ancestry'
# Session storage
gem 'activerecord-session_store'
# Production environment variables
gem 'figaro'
# Roman Numbers (for calculate editions)
gem 'roman-numerals'
# Cookie notice
gem 'cookies_eu'
# Url shortener
gem 'bitly'
# Identicons
gem 'ruby_identicon'
# Meta tags
gem 'meta-tags'
# Markdown
gem 'redcarpet'
# Embedded content (Youtube, Vimeo, etc)
gem 'embed'
# Favicon generator
gem 'favicon_maker'
