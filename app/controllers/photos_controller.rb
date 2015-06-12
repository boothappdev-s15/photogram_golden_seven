class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end
  def new_form

  end
  def create_row
    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save

    redirect_to("http://localhost:3000/photos")

  end
  def show
    @the_photo = Photo.find_by({ :id =>params["id"]})
  end
  def destroy
    p = Photo.find_by({ :id =>params["id"]})
    p.destroy

    redirect_to("http://localhost:3000/photos")
  end
  def edit_form
    p = Photo.find_by({ :id =>params["id"]})
    @photo_source = p.source
    @photo_caption = p.caption
    @photo_id = p.id


  end
    def update_row
    p = Photo.find_by({ :id =>params["id"]})
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save

    p_id = p.id

    redirect_to("http://localhost:3000/photos/#{p_id}")




  end


end
