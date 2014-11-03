class EntriesController < ApplicationController
    
  get '/new' do
    authenticate!
    session[:current_user]
    erb :'entries/new'
  end

  get '/toast' do

    erb :'entries/toast'
  end

  get '/printer' do

    erb :'entries/printer'
  end

  get '/noodle' do
    erb :'entries/noodle'
  end

  get '/blob' do
    
    erb :'entries/blob'
  end

  get '/dinosaur' do

    erb :'entries/dinosaur'
  end

  get '/:id' do
    authenticate!
    @entry = Entry.find(params[:id])
    erb :'entries/entry'
  end

  get '/:id/edit' do
    authenticate!
    @entry = Entry.find(params[:id])
    erb :'entries/edit'
  end


  post '/'do
    authenticate!
    @entry = Entry.new(params[:entry])
    @entry.user = current_user
    @entry.save
    redirect "/"
  end

  delete '/' do
    authenticate!
    Entry.find(params[:entry_id]).destroy
    redirect '/'
  end

  patch '/:id' do
    authenticate!
    entry = Entry.find(params[:id])
    entry.update(params[:entry])
    redirect '/'
  end

end