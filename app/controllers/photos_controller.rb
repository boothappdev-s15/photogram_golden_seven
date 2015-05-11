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
    p.source=params[:the_source]
    p.caption=params[:the_caption]
    p.save
    redirect_to("/photos")
  end

  def destroy
    p=Photo.find(params[:id])
    p.delete
    redirect_to("/photos")
  end

  def edit_form
    @photo=Photo.find(params[:id])
  end

  def update_row
    p=Photo.find(params[:id])
    p.source=params[:the_source]
    p.caption=params[:the_caption]
    p.save
    redirect_to("/photos")
  end

end
