class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end
  def show
    @the_photo = Photo.find_by({ :id =>params["id"]})
  end


end
