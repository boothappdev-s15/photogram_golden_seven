Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  #Add new photos
  get("/photos/new",       { :controller => "photos", :action => "new_form"})
  get("/photos/create_row", { :controller => "photos", :action => "create_row"})


  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })


end
