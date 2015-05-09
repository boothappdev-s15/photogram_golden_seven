class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

 def show
    @source= Photo.find_by({:id => params[:id]}).source
    @caption= Photo.find_by({:id => params[:id]}).caption
 end

  def new_form

  end

  def create_row
    z=Photo.new
    z.caption=params[:the_caption]
    z.source=params[:the_source]
    z.save

  # redirect_to("http://localhost:3000/photos")

  end

end
