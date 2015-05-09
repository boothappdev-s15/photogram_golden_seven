Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos

  get("/photos",           { :controller => "photos", :action => "index" })

  get("/photos/:id",       { :controller => "photos", :action => "show" })

  get("/photos/:id/edit",       { :controller => "photos", :action => "edit" })

  get("/delete_photo/:id",       { :controller => "photos", :action => "delete" })

  get("/photos/new",       { :controller => "photos", :action => "new" })

  get("/update_photo/:id",       { :controller => "photos", :action => "update" })

end

