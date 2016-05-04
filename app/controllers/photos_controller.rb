class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({:id => params[:id]})
  end

  def create_row
    p = Photo.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.save
    redirect_to("http://localhost:3000/")
  end

  def destroy
    p = Photo.find_by({:id => params[:id]})
    p.destroy
    redirect_to("http://localhost:3000/")
  end

  def edit_form
    @photo = Photo.find_by({:id => params[:id]})
  end

  def update_row
    p = Photo.find_by({:id => params[:id]})
    p.source = params[:source]
    p.caption = params[:caption]
    p.save
    redirect_to("http://localhost:3000/")
  end


end
