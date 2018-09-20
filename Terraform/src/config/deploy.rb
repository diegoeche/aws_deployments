# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :repo_url, "git@github.com:diegoeche/aws_deployments.git"
set :branch, "master"
set :application, "terraform"
set :ssh_options, { :forward_agent => true }
set :deploy_to, "/home/ubuntu/"
set :app_command, "bin/www.js"
require 'json'

namespace :pm2 do
  def app_status
    within current_path do
      ps = JSON.parse(capture :pm2, :jlist, fetch(:app_command))
      if ps.empty?
        return nil
      else
        # status: online, errored, stopped
        return ps[0]["pm2_env"]["status"]
      end
    end
  end

  def restart_app
    within current_path do
      execute :pm2, :restart, fetch(:app_command)
    end
  end

  def start_app
    within current_path do
      execute :pm2, :stop, fetch(:app_command)
    end
  end

  desc 'Restart app gracefully'
  task :restart do
    on roles(:app) do
      case app_status
      when nil
        info 'App is not registerd'
        start_app
      when 'stopped'
        info 'App is stopped'
        restart_app
      when 'errored'
        info 'App has errored'
        restart_app
      when 'online'
        info 'App is online'
        restart_app
      end
    end
  end
end

namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'pm2:restart'
  end

  after "symlink:release", :restart
end
