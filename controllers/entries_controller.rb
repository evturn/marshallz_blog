class EntriesController < ApplicationController
    
  get '/new' do

    erb :'entries/new'
  end

  get '/:id' do
    @entry = Entry.find(params[:id])
    erb :'entries/entry'
  end

  get '/:id/edit' do

    @entry = Entry.find(params[:id])
    erb :'entries/edit'
  end

  post '/'do

    @entry = Entry.create(params[:entry])
    redirect "/"
  end

  delete '/' do

    Entry.find(params[:entry_id]).destroy
    redirect '/'
  end

  patch '/:id' do
    entry = Entry.find(params[:id])
    entry.update(params[:entry])
    redirect '/'
  end

end