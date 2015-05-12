class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form
  end

  def edit_form
    i = Photo.find_by({ :id => params[:id]})
    @photo = i
  end

def update_row
  i = Photo.find_by({ :id => params[:id]})
  i.source = params["the_source"]
  i.caption = params["the_caption"]
  i.save
  redirect_to("http://localhost:3000/photos/#{i.id}")
end


  def destroy
    i = Photo.find_by({ :id => params[:id]})
    i.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def create_row
    i = Photo.new
    i.source = params["the_source"]
    i.caption = params["the_caption"]
    i.save
    redirect_to("http://localhost:3000/photos")
  end

  def show
    i = Photo.find_by({ :id => params[:id]})
    @image = i.source
    @caption = i.caption
  end

end
