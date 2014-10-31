class UsersController < ApplicationController
  get '/new' do
    erb :'users/new'
  end

  post '/' do
    user = User.new(params[:user])
    user.password = params[:password]
    user.save!
    session[:current_user] = user.id
    redirect "/"
  end

  get '/profiles' do
    @users = User.all
    erb :'users/profiles'
  end
end