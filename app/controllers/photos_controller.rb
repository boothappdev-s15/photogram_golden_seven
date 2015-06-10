class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

  	photo_index = params[:id]

  	@target_entry = Photo.find(photo_index)

  	render 'show'

  end

  def new_forms

  	render 'new_forms'

  end

  def create_row

  	new_row = Photo.new
  	new_row.source = params[:the_source]
  	new_row.caption = params[:the_caption]
  	new_row.save

  	redirect_to("/")

  end

  def destroy

  	id_num = params[:id]

  	the_photo = Photo.find(id_num)
  	the_photo.destroy

  	redirect_to("/")

  end

  def edit_form

  	id_num = params[:id]
  	@photo_edit = Photo.find(id_num)

  	render 'edit_forms'

  end

  def update_row
  	id_num = params[:id]
  	the_photo = Photo.find(id_num)
  	the_photo.source = params[:the_source]
  	the_photo.caption = params[:the_caption]
  	the_photo.save
  	redirect_to("/")
  end

end
