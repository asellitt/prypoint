require 'sinatra'
require 'pry-debugger'

get '/json*' do
  response.headers['Content-Type'] = 'application/javascript';
  response.headers['Access-Control-Allow-Origin'] = '*';
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'];
  request.params["json"]
end

post '/json*' do
  response.headers['Content-Type'] = 'application/javascript';
  response.headers['Access-Control-Allow-Origin'] = '*';
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'];
  request.params["json"]
end

options '/json*' do
  response.headers['Content-Type'] = 'application/javascript';
  response.headers['Access-Control-Allow-Origin'] = '*';
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'];
  request.params["json"]
end

get '/pry*' do
  response.headers['Access-Control-Allow-Origin'] = '*';
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'];
  binding.pry
end

post '/pry*' do
  response.headers['Access-Control-Allow-Origin'] = '*';
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'];
  pry.binding
end

options '/pry*' do
  response.headers['Access-Control-Allow-Origin'] = '*';
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'];
  pry.binding
end

get '/' do
  "Oh Hai! You know what to do..."
end
