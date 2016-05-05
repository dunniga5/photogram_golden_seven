class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def show
  @id = params[:id]
@url = Photo.find(@id).source
@caption = Photo.find(@id).caption

render("show.html.erb")

end

end
