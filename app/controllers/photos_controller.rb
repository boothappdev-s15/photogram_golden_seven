class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @record_call = Photo.find(params[:id])


  end

  def new_form



  end

  def create_row
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to('http://localhost:3000/')
  end

  def destroy
    p = Photo.find(params[:id])
    p.destroy

    redirect_to('http://localhost:3000')
  end



end

#
