class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    record_call = Photo.find(params[:id])
    address = record_call.source

    redirect_to(address)


  end

end

#
