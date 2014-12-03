t to load
require './app'

# tell Heroku what to do
run Sinatra::Application

set :bind, '0.0.0.0' # to listen on all interfaces
