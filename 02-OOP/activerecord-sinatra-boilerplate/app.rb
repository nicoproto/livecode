require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @simpsons = Simpson.all
  erb :index
end


get '/simpsons/:id' do
  simpson_id = params[:id]
  @simpson = Simpson.find(simpson_id)
  erb :show
end

post "/simpsons" do
  name = params[:name]
  quote = params[:quote]
  simpson = Simpson.new(name: name, quote: quote)
  simpson.save!
  redirect '/'
end
