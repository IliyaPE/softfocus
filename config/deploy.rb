require 'capistrano_colors'
require 'bundler/capistrano'
load 'deploy/assets'

set :application, "Softfocus.me website"

# Repository
set :scm, :git
set :repository,  "git@bitbucket.org:adrienjarthon/softfocus"

# Server
server "pi.rootbox.fr", :app, :web, :db, :primary => true
set :user, :deploy
set :deploy_to, "/home/deploy/softfocus"
set :use_sudo, false

# rbenv
set :default_environment, {
  'PATH' => "/home/deploy/.rbenv/shims:/home/deploy/.rbenv/bin:$PATH"
}

# bundler
set :bundle_flags, "--deployment --quiet --binstubs --shebang ruby-local-exec"

# unicorn commands
namespace :deploy do
  task :start, :roles => :app, :except => { :no_release => true } do
    run 'sudo start softfocus'
  end

  task :stop, :roles => :app, :except => { :no_release => true } do
    run 'sudo stop softfocus'
  end

  task :restart, :roles => :app, :except => { :no_release => true } do
    run 'sudo restart softfocus'
  end
end
