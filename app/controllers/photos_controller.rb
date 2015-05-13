class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def show
    #@list_of_photos = Photo.all
    @photo = Photo.find_by({:id => params[:id]})
    render('show.html.erb')
  end

  def edit
    #@list_of_photos = Photo.all
    @p = Photo.find_by({:id => params[:id]})
    #@p.source = params[:the_ source]

    render('edit.html.erb')
  end

  def delete
    @d = Photo.find(params[:id])
    @d.destroy
    redirect_to('http://localhost:3000/photos')
  end

  def new

    render('new.html.erb')
  end

  def create
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save
    redirect_to('http://localhost:3000/photos')
  end

  def update
    u = Photo.find(params[:id])
    u.source = params[:the_source]
    u.caption = params[:the_caption]
    u.save
    redirect_to('http://localhost:3000/photos')
  end

end

