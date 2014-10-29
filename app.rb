# require 'bundler'
# Bundler.require

# enable :sessions

# # **** helpers ****
# require_relative 'helpers/app_helper'



# # **** models ****
# require_relative 'connection'
# require_relative 'models/entry'
# require_relative 'models/user'


# get '/' do
#   @entries = Entry.all
#   erb :index
# end


# get '/users/new' do
#   erb :'users/new'
# end

# post '/users' do
#   user = User.new(params[:user])
#   user.password = params[:password]
#   user.save!
#   redirect "/profiles"
# end

# get '/users/profiles' do
#   @users = User.all
#   erb :'users/profiles'
# end

# get '/sessions/new' do
#   erb :'sessions/new'
# end

# post '/sessions' do
#   user = User.find_by(username: params[:username])
#   if user.password == params[:password]
#     session[:current_user] = user.id
#     redirect '/'
#   else
#     redirect '/users/welcome'
#   end
# end

# get '/users/welcome' do

#   erb :'users/welcome'
# end

# delete '/sessions' do
#   session[:current_user] = nil
#   redirect '/'
# end

# left off here, need to make sure this works
# delete '/entries' do
#   session[:current_user] = user.id
#   Entry.delete
# end

# get '/entries/edit' do
#   authenticate!
#   @entries = Entry.find(params[:entry_id])

#   erb
# end

# patch '/entries' do
#   authenticate!
# end