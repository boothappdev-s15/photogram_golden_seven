class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all

    render('index.html.erb')
  end

  def new_form

    render('new_form.html.erb')
  end

  def create_row
    p = Photo.new
    p.source = params[:photo_caption]
    p.caption = params[:photo_image_url]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })

    render('show.html.erb')
  end

  def destroy
    z = Photo.find(params[:id])
    z.destroy

    redirect_to("http://localhost:3000/photos")
  end

end
