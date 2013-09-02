require 'sinatra'
require 'pry-debugger'

get '/json/*' do
  request.params["json"]
end

post '/json/*' do
  request.params["json"]
end

get '/*' do
  binding.pry
end

post '/*' do
  pry.binding
end
