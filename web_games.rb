require 'sinatra' 
require 'sinatra/reloader'

number = (1 + rand(99)).to_s

get "/" do
  input = params["guess"]
  message = ""
  erb :index, :locals => {:number => number, :message => message }
end

