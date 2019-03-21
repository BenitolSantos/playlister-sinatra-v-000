class GenresController < ApplicationController

  get '/genres' do
    @genres = Genre.all
    erb :'/genres/index'
  end


  get '/genres/:slug' do
    @genre = Genre.find_by_slug(params["slug"])
    @artists = Artist.all
    @songs = Songs.all
    erb :"/genres/show"
  end
end
