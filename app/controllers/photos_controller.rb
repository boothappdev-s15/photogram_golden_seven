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

  def edit_form
    p = Photo.find(params[:id])
    @source = p.source
    @caption = p.caption

  end

  def update_row
    p = Photo.find(params[:id])
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("http://localhost:3000/photos/#{params[:id]}")

  end





end

#
