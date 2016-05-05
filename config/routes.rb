Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })
  get("/photos/new", {:controller => "photos", :action => "new_photo"})
  get("/create_photo",       { :controller => "photos", :action => "create_photo" })

  get("/photos/:id/edit",       { :controller => "photos", :action => "edit_page" })
  get("/edit/:id",       { :controller => "photos", :action => "edit" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })



end
