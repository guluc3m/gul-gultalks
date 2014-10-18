# require 'bundler/capistrano'
require 'rvm/capistrano'

set :application, "gul-talks"

set :scm, :none
set :repository, "."
set :deploy_via, :copy

set :deploy_to, "/home/gultalks/app"

set :use_sudo, false
set :user, "gultalks"

set :bundle_flags, "--deployment"
set :bundle_without, [:development, :test]

#role :web, "163.117.156.71"          # Your HTTP server, Apache/etc
role :web, "cursos.gul.es"
role :app, "cursos.gul.es"
role :db, "cursos.gul.es", :primary=> true

# before "deploy:assets:precompile"
after "deploy", "deploy:restart" 
after "deploy", "deploy:migrate"
# after "deploy", "db:seed"
after "deploy:restart", "deploy:cleanup"

namespace :deploy do
    task :restart, :roles => :web do
        run "touch #{deploy_to}/current/tmp/restart.txt"
    end
    desc "Reload the database with seed data"
    task :seed do
        run "cd #{current_path}; bundle exec rake db:seed RAILS_ENV=#{rails_env}"
    end
end
