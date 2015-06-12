class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @list_of_photos = Photo.find_by({:id => params[:id]})
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos/#{p.id}")

  end

  def destroy
    p = Photo.find_by({:id => params[:num]})
    p.destroy
    redirect_to("http://localhost:3000/photos/")
  end

  def edit_form
    p = Photo.find(params[:id])

    @the_caption = p.caption
    @url = p.source

    p.caption = params[:the_caption]
    p.source = params[:the_source]

    i=Photo.find(params[:id])
    i.destroy

    p.save

  end

end
