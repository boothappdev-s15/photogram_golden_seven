Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routest to CREATE Photos
  get("/photos/new",       { :controller => "photos", :action => "new_form"   })
  get("/create_photo",{ :controller => "photos",:action => "create_row" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show"  })

  # Routes to Update photos
  get("/photos/:id/edit",   { :controller => "photos",:action => "edit"  })
  get("/update/:id",            { :controller => "photos",:action => "update_row"})

  # Routes to Delete photos
  get("delete_photo/:id",   { :controller => "photos",:action => "delete"})
end
