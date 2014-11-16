class PicturesController < ApplicationController

  def index
    @picture = Picture.all

  end

  def new
    @picture = Picture.new

  end

  def create
     if Picture.create(picture_params)
       # uploader = PictureUploadUploader
       redirect_to root_path
     end
  end

  def show
    find_picture
  end

  def edit
    find_picture
  end

  def update
    if @picture = find_picture.update(picture_params)
      redirect_to picture_path
    end
  end

  def upvote
    # if upvote button is pressed than the ranking increased by 1
      find_picture.update(ranking: @picture.ranking + 1)
      redirect_to picture_path
  end

  def destroy
    if find_picture.destroy
      redirect_to pictures_path
    end
  end


  private

  def picture_params
    params.require(:picture).permit(:name, :url, :description, :ranking, :uploader)
  end

  def find_picture
    @picture = Picture.find(params[:id])
  end

end
