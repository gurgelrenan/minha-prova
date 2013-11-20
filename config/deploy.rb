require 'bundler/capistrano'

set :user, "renan"
set :application, "Minha Prova"
set :repository,  "git@github.com:gurgelrenan/minha-prova.git"
set :domain, "minhaprova.com.br"

set :scm, :git

role :web, domain 
role :app, domain 
role :db, domain,:primary => true

set :deploy_to, "/var/www/minhaprova.com.br"
set :rails_env, 'production'

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end