require 'sinatra'
require 'pry-debugger'

get '/*' do
  binding.pry
end

post '/*' do
  pry.binding
end
