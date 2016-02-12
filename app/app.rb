require 'sinatra/base'
require 'shotgun'
require_relative './models/link'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/links' do
    @links = Links.all
    erb(:'./links/index')
  end

  post '/links/new' do
    erb(:'./links/add_link')
    redirect('/links')
  end

  run! if app_file == $0
end
