# sample/sample_app.rb
require 'sinatra'
require 'pry' 

set :session_secret, ENV["Session_Key"] || 'too secret'

enable :sessions


get '/' do
 @title = "Comming Soon" 
  erb :form, :locals => {:session => session }
end

# get '/thanks' do
#   erb :thanks
#   @title = "Thanks"
# end

 post '/thanks' do 
 # binding.pry
 @title = "Thanks"
 session[:name] = params[:name]
 binding.pry
 erb :thanks
 end  

 get '/suckers' do
  @title = "suckers"
   "Suckers"
   erb :sucker
 end
  
 post '/suckers' do
  @title = "suckers"
  "got some suckers"
  erb :sucker

 end