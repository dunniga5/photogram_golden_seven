class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def new_photo

  end

  def create_photo
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("/photos")
  end

  def edit_page
    @photo_edit = Photo.find_by({ :id => params[:id] })
  end

  def edit
    i = Photo.find_by({ :id => params[:id] })
    i.caption = params[:edit_caption]
    i.source = params[:edit_source]
    i.save

    # cant get dynamic link to move
    redirect_to("/photos/7")
  end

  def delete
    i = Photo.find_by({ :id => params[:id] })
    i.destroy

    redirect_to("/photos")

  end

end
