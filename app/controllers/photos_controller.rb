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

  def new_form

    render("new_form.html.erb")

  end

def create_row
  @new_url=params[:new_url]
  @new_caption=params[:new_caption]

  x = Photo.new
  x.source = @new_url
  x.caption = @new_caption
  x.save

redirect_to("http://localhost:3000/photos")
end

def delete

  @delete_id = params[:id]
  x=Photo.find(@delete_id)
  x.destroy

redirect_to("http://localhost:3000/photos")
end

def edit_form
@edit_id=params[:id]
@form_source = Photo.find(@edit_id).source
@form_caption = Photo.find(@edit_id).caption
render("edit_form.html.erb")

end

def edit_row
@change_id=params[:id]
i = Photo.find(@change_id)
i.source = params[:edit_url]
i.caption=params[:edit_caption]
i.save
redirect_to("http://localhost:3000/photos")
end

end
