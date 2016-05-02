class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def update_row
    @photo = Photo.find_by({ :id => params[:id]})
    @photo.source = params[:the_source]
    @photo.caption = params[:the_caption]
    @photo.save

    render("show.html.erb")
  end

  def delete
    p = Photo.find_by({ :id => params[:id]})
    p.destroy
    redirect_to("/photos")
  end

end
