default_run_options[:pty] = true

require 'capistrano/ext/multistage'

set :application, "minhaprova.com.br"

set :scm, :git
set :repository, "git@github.com:gurgelrenan/minha-prova.git"

set :user, "renan"

set :stages, ["staging", "production"]
set :default_stage, "staging"