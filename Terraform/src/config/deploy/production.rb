# Change the ip to your instance IP.
server "35.168.112.161", :user => "ubuntu", :roles => %{web app}

set :repository, "git@github.com:diegoeche/aws_deployments.git"
set :branch, "master"
