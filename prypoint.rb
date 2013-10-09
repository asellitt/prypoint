require 'sinatra'
require 'pry-debugger'
require 'better_errors'

configure do
  use BetterErrors::Middleware
end

get '/json*' do
  f_u_cors
  response.headers['Content-Type'] = 'application/javascript'
  request.params["json"]
end

post '/json*' do
  f_u_cors
  response.headers['Content-Type'] = 'application/javascript'
  request.params["json"]
end

options '/json*' do
  f_u_cors
  response.headers['Content-Type'] = 'application/javascript'
  request.params["json"]
end

get '/pry*' do
  f_u_cors
  binding.pry
end

post '/pry*' do
  f_u_cors
  pry.binding
end

options '/pry*' do
  f_u_cors
  pry.binding
end

get '/error*' do
  f_u_cors
  raise
end

post '/error*' do
  f_u_cors
  raise
end

options '/error*' do
  f_u_cors
  raise
end

get '/' do
  "Oh Hai! You know what to do..."
end

def f_u_cors
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']
end