class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def show
    @list_of_photos = Photo.all
    @photo = Photo.find_by({:id => params[:id]})
    render('show.html.erb')
  end

  def edit
    @list_of_photos = Photo.all
    @photo = Photo.find_by({:id => params[:id]})
    render('edit.html.erb')
  end

  def delete
    d = Photo.find(params[:id])
    d.destroy
    redirect_to('http://localhost:3000/photos')
  end

  def new
    @list_of_photos = Photo.all
    @photo = Photo.find_by({:id => params[:id]})
    render('new.html.erb')
  end

end
