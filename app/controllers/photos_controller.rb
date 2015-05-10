class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
     @photo = Photo.find_by({ :id => params[:id]})
     #@photo = Photo.find({params[:id]})
  end

  def new_form
    # render('new_form.html.erb')
  end

  def create_row

  #  raise params.inspect
  p = Photo.new
  p.source = params[:the_source]
  p.caption = params[:the_caption]
  p.save

  redirect_to("http://localhost:3000/photos")
  end

end
