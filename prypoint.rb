require 'sinatra'
require 'pry-debugger'
require 'better_errors'

configure do
  use BetterErrors::Middleware
  BetterErrors::Middleware.allow_ip! 220.244.159.182
end

before do
  f_u_cors
end

get '/json*' do
  response.headers['Content-Type'] = 'application/javascript'
  request.params["json"]
end

post '/json*' do
  response.headers['Content-Type'] = 'application/javascript'
  request.params["json"]
end

options '/json*' do
  response.headers['Content-Type'] = 'application/javascript'
  request.params["json"]
end

get '/pry*' do
  binding.pry
end

post '/pry*' do
  pry.binding
end

options '/pry*' do
  pry.binding
end

get '/error*' do
  raise
end

post '/error*' do
  raise
end

options '/error*' do
  raise
end

get '/' do
  "Oh Hai! You know what to do..."
end

def f_u_cors
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']
end