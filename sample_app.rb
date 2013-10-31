# encoding: UTF-8
# sample/sample_app.rb
require 'sinatra'

set :session_secret, ENV['Session_Key'] || 'too secret'

enable :sessions

get '/' do
  @title = 'Comming Soon'
  erb :form, :locals => { :session => session }
end

 post '/thanks' do
   @title = 'Thanks'
 session['users'] = [] unless session['users']
 session['users'] << { name: params[:name] ,
                       email: params[:email] ,
                       twitter: params[:twitter] }
 erb :thanks
 end

 get '/suckers' do
   @title = 'Suckers'
   erb :sucker
 end

get '/suckers/:id' do
  @title = 'Suckers'
  @id = params[:id].to_i
  @sucker = session['users'][@id]
  erb :sucker1
end
