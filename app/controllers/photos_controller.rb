class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo=Photo.find(params[:id])
  end

  def new_form

  end

  def create_row
    p=Photo.new
    p.caption = params[:caption]
    p.url = params[:image_url]
    p.save
    redirect_to("http://localhost:3000/photos")
  end

end
