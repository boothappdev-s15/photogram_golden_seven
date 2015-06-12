class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def show
    @id = params[:id].to_i

    @p = Photo.find(@id)

    @source = @p.source
    @caption = @p.caption
  end


  def new_form
  end


  def create_row
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos")
  end



  def destroy
    p = Photo.find(params[:id].to_i)
    p.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @id = params[:id].to_i
    p = Photo.find(@id)
    @source = p.source.to_s
    @caption = p.caption.to_s
  end

  def update_row
    p2 = Photo.find(params[:id].to_i)
    p2.source = params[:the_source]
    p2.caption = params[:the_caption]
    p2.save

    redirect_to("http://localhost:3000/photos")
  end


end
