class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    @source = params[:the_source]
    @caption = params[:the_caption]

    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    p = Photo.find(params[:id])
    p.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def show
    @photos = Photo.find_by({ :id => params[:id] })
  end

  def edit_form
    @photos = Photo.find_by({ :id => params[:id] })
  end

  def update_row
    p = Photo.find(params[:id])
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos/" + params[:id])
  end

end
