class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @pic_url =Photo.find(params[:id]).source
    @id =(params[:id])
  end

  def create_photo
    z= Photo.new
    z.source = params[:the_source]
    z.caption = params[:the_caption]
    z.save

    redirect_to ("http://localhost:3000")

    end

  def delete
    id =Photo.find(params[:id])
    id.destroy

  redirect_to ("http://localhost:3000")
  end

  def edit_form
    @id_edit = params[:id]
    @source = Photo.find(params[:id]).source
    @caption = Photo.find(params[:id]).caption

  end
  def update_photo

    a= Photo.find(params[:id])
    a.source = params[:the_source]
    a.caption = params[:the_caption]
    a.save

    redirect_to ("http://localhost:3000/photos/#{a.id}")
    end


end
