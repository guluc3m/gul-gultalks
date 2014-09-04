require 'bundler/capistrano'

set :application, "gul-talks"

set :scm, :none
set :repository, "."
set :deploy_via, :copy

set :deploy_to, "/home/gultalks/test"

set :use_sudo, false

set :user, "gultalks"

#role :web, "163.117.156.71"          # Your HTTP server, Apache/etc
role :web, "noguera.gul.es" 
role :db, "noguera.gul.es", :primary=> true

after "deploy", "deploy:restart" 
after "deploy", "db:migrate"
after "deploy", "db:seed"

namespace :deploy do
    task :restart, :roles => :web do
        run "touch #{deploy_to}/current/tmp/restart.txt"
    end
    desc "reload the database with seed data"
    task :seed do
        run "cd #{current_path}; bundle exec rake db:seed RAILS_ENV=#{rails_env}"
    end
end
