class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

 def show


    @source= Photo.find_by({:id => params[:id]}).source
    @caption= Photo.find_by({:id => params[:id]}).caption


 end


end
