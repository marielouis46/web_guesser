require 'sinatra' 
require 'sinatra/reloader'

number = (1 + rand(99)).to_s

get "/" do
  input = params["guess"]

message = ""

 if params["guess"].to_i > 50
  message = "You have guessed to high"
 end

  erb :index, :locals => {:number => number, :message => message }
end

