set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '104.131.31.229', user: 'deploy', roles: %w{web app}
