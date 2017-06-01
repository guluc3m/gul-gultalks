source 'https://rubygems.org'
ruby '2.3.1'

# TODO(javierhonduco): haven't uploaded to bleeding-edge
# Rails, 5.1.1, because of routing imcompatibilities
gem 'rails', '~> 5.0.3'

# Use sqlite3 as the database for Active Record
group :development, :test do
    gem 'sqlite3'
    gem 'better_errors'
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
# TODO(javierhonduco): lock 5.5.3.2 instead of 6.3.1.0
# otherwise the stylesheet isn't shown for some reason...
gem 'foundation-rails', '5.5.3.2'
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
# BUG: Gem locked because of this same? (bug?): https://github.com/trailblazer/trailblazer/issues/126
gem 'reform', '~> 2.1.0'
# iCalendar
gem 'icalendar'
# reCAPTCHA
# TODO(javierhonduco): Gem locked there because it was broken w/ Rails 5
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
