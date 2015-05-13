class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all

    render('index.html.erb')
  end

  def new_form

    render('new_form.html.erb')
  end

  def edit_form
    @photo_id = params[:id]
    p = Photo.find_by({ :id => @photo_id })
    @caption = p.caption
    @source = p.source
  end

  def update_row
    @photo = Photo.find(params[:id])
    @photo.source = params[:the_source]
    @photo.caption = params[:the_caption]
    @photo.save

    render('show.html.erb')
  end

  def create_row
    photo = Photo.new
    photo.source = params[:the_source]
    photo.caption = params[:the_caption]
    photo.save

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
