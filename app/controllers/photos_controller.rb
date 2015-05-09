class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new_form
  end

  def create_row

    a         = Photo.new
    a.source  = params[:the_source]
    a.caption = params[:the_caption]
    a.save

    redirect_to("http://localhost:3000/photos")

  end

  def destroy
    Photo.find(params[:id]).destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row

    a         = Photo.find(params[:id])
    a.source  = params[:the_source]
    a.caption = params[:the_caption]
    a.save

    redirect_to("http://localhost:3000/photos/#{a.id}")

  end

end
