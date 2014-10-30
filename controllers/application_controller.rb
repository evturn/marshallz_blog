class ApplicationController < Sinatra::Base
  helpers Sinatra::AuthenticationHelper


  ActiveRecord::Base.establish_connection({
    adapter: 'postgresql',
    database: 'blog_db'
    })

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)


  enable :sessions, :method_override

  get '/' do
    @entries = Entry.all
    erb :index
  end

  get '/welcome' do

    erb :'users/welcome'
  end

end