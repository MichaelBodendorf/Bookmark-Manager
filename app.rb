require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  get '/new' do
    erb :'bookmarks/new'
  end

  get '/bookmarks' do
    
    @bookmarks = Bookmark.list
             
    erb :'bookmarks/bookmarks'
  end

  post '/bookmarks' do
    Bookmark.add(params[:website])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end

