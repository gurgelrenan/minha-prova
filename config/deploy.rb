# RVM bootstrap
require 'rvm/capistrano'
#set :rvm_ruby_string, '1.9.2-p290'

# bundler bootstrap
require 'bundler/capistrano'

set :application, "minhaprova.com.br"
role :web, "domainname"
role :app, "domainname"
role :db,  "domainname", :primary => true

# server details
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :deploy_to, "/var/www/minhaprova.com.br"
set :deploy_via, :remote_cache
set :user, "passenger"
set :use_sudo, false

# repo details
set :scm, :git
set :scm_username, "gurgelrenan"
set :repository, "git@github.com:gurgelrenan/minha-prova.git"
set :branch, "master"
set :git_enable_submodules, 1

# tasks
namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
