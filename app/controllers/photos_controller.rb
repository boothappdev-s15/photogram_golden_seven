class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all

    render('index.html.erb')
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })

    render('show.html.erb')
  end

end
