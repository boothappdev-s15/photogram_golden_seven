Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/new",       { :controller => "photos", :action => "new_form" })
  get("/photos/create_new",{ :controller => "photos", :action => "add_pic" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })
  get("/photos/:id/edit",  { :controller => "photos", :action => "edit" })
  get("/photos/save_edit/:id",  { :controller => "photos", :action => "save_edit" })
  get("/delete_photo/:id", { :controller => "photos", :action => "delete" })




end
