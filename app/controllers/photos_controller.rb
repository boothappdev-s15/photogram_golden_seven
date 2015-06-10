class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  # def show
  # 	@photosource = Photo.all
  # 	@photocaption = Photo.all
  # 	@photoid     = Photo.all
  # end

  def show
    @photo = Photo.find(params[:id])
  end

  def new_form
  end

  def create_row
  	# @p = Photo.find(params[:id])
  	# @p.caption = Photo.find(params[:the_caption])
  	# @p.source = Photo.find(params[:the_source])
  	# save @p
  	
  	# makes sense since you're making a new photo
  	p = Photo.new 

  	# p already captures Photo.new, so no need to write it again .source and .captaion are built in functions? 
  	p.source = params[:the_source]
  	p.caption = params[:the_caption]

  	#save what you just made
  	p.save

  	#must go somewhere after making a row
  	redirect_to("http://localhost:3000/photos")
  end

  def destroy
  	z = Photo.find(params[:id])
	z.destroy
  	redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row  
  	# p = Photo.new  we're editing, not making anything new
  	p = Photo.find(params[:id])
  	p.source = params[:the_source]
  	p.caption = params[:the_caption]
  	p.save
  	redirect_to("http://localhost:3000/photos")
  	# <a href="http://localhost:3000/photos">Back</a>
   #  <a href="http://localhost:3000/photos/<%= @photo.id %>/edit">Edit</a>
   #  <a href="http://localhost:3000/delete_photo/<%= @photo.id %>">Delete</a>
  end

end



# def update_row
#   p = Photo.find(params[:id])
#   p.source = params[:the_source]
#   p.caption = params[:the_caption]
#   p.save

#   redirect_to("http://localhost:3000/photos/#{p.id}")
# end








def create_row
  p = Photo.new
  p.source = params[:the_source]
  p.caption = params[:the_caption]
  p.save

  redirect_to("http://localhost:3000/photos")
end