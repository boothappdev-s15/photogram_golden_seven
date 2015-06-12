class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    my_photo = Photo.find_by id: params[:id]
    @list_of_photos = Array.new
    @list_of_photos.push(my_photo)
  end



  def new_form
    # @the_source = params[:the_source]
    # @the_caption = params[:the_caption]
  end

  def create_row
    photo = Photo.new
    photo.source = params[:the_source]
    photo.caption = params[:the_caption]
    photo.save
    redirect_to('/photos/')

  end
  def edit_row
    photo = Photo.find_by id: params[:id]
    photo.source = params[:the_source]
    photo.caption = params[:the_caption]
    photo.save
    redirect_to('/photos/')

  end
  def destroy
    my_photo = Photo.find_by id: params[:id]
    my_photo.destroy

    redirect_to('/photos/')

  end

  def edit_form
    my_photo = Photo.find_by id: params[:id]
    @list_of_photos = Array.new
    @list_of_photos.push(my_photo)

  end


end
