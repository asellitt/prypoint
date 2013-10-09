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

get '/*' do
  response.headers['Access-Control-Allow-Origin'] = '*';
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'];
  binding.pry
end

post '/*' do
  response.headers['Access-Control-Allow-Origin'] = '*';
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'];
  pry.binding
end

options '/*' do
  response.headers['Access-Control-Allow-Origin'] = '*';
  response.headers['Access-Control-Allow-Headers'] = request.env['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'];
  pry.binding
end
