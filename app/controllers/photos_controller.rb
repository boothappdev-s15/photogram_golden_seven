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

    render('edit.html.erb')
  end

  def delete
    d = Photo.find(params[:id])
    d.destroy
    redirect_to('http://localhost:3000/photos')
  end

  def new

    render('new.html.erb')
  end

  def update

  end

end
