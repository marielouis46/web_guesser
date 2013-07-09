require 'sinatra' 
require 'sinatra/reloader'

number = (1 + rand(99)).to_s

get "/" do
  input = params["guess"]
  erb :index, :locals => {:number => number}
end

if number.to_i > 50
	puts "You have guessed to high"
	erb :index, :locals => {:number => number}
end
