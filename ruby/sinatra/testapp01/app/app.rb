require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'

get '/' do
  erb :index
end

get '/bio' do
  erb :bio
end
