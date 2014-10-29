class EntriesController < ApplicationController
  
  delete '/' do
    session[:current_user] = user.id
    Entry.delete
  end

  get '/edit' do
    authenticate!
    @entries = Entry.find(params[:entry_id])

    erb
  end

  patch '/' do
    authenticate!
  end

end