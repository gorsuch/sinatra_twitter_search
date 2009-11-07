require 'rubygems'
require 'sinatra'

require 'twitter'

get "/" do
  erb :index
end

post "/" do
  @results = Twitter::Search.new(params[:query])
  erb :index
end