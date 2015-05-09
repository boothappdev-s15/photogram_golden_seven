class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

    @pic_id = params[:id]

    p = Photo.find_by ({:id => @pic_id})

    @caption = p.caption
    @source = p.source

  end

  def new_form

  end

  def add_pic

    p = Photo.new
    @caption = params[:caption]
    @source  = params[:source]
    p.caption = @caption
    p.source = @source
    p.save

    redirect_to('http://localhost:3000/photos/')

  end

  def delete

    @pic_id = params[:id]

    p = Photo.find_by ({:id => @pic_id})

    p.destroy
    p.save
    redirect_to('http://localhost:3000/photos/')
  end

def edit

  @pic_id = params[:id]

    p = Photo.find_by ({:id => @pic_id})

    @caption = p.caption
    @source = p.source
end

def save_edit

  @pic_id = params[:id]
  @caption = params[:caption]
  @source = params[:source ]

    p = Photo.find_by ({:id => @pic_id})

    p.caption = @caption
    p.source = @source

    p.save

    redirect_to('http://localhost:3000/photos/<%= @pic_id %>')


end

end
