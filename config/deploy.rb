set :application, "railscoursework"
set :repository,  "git@github.com:rr/ruby-on-rails-project.git"
set :rake, "/opt/ruby-enterprise-1.8.7-2009.10/bin/rake"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/home/jklahtin/cap"

set :gateway, "db.cs.helsinki.fi"

set :user, "jklahtin"
set :scm_username, "rr"
set :use_sudo, false

role :web, "rails.cs.helsinki.fi"                          # Your HTTP server, Apache/etc
role :app, "rails.cs.helsinki.fi"                          # This may be the same as your `Web` server
role :db,  "rails.cs.helsinki.fi", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start {}
#   task :stop {}
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end