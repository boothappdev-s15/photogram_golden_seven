class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
  	id = params[:id]
  	@p = Photo.find(id)

  end

  def new_photo

  end

 def create_photo
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def edit_photo
	@photo = Photo.find(params[:id])
  end

   def update_photo
    p = Photo.find(params[:id])
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos/#{p.id}")
  end

  def photo_delete
    p = Photo.find(params[:id])
    p.destroy

    redirect_to("http://localhost:3000/photos")
  end
end
