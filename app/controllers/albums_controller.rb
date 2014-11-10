class AlbumsController < ApplicationController

  def index
    @album = Album.all

  end

  def new
    @album = Album.new

  end

  def create
    if Album.create(album_params)
      redirect_to root_path
    end
  end

  def show
    find_album
  end

  def edit
    find_album
  end

  def update
    if @album = find_album.update(album_params)
      redirect_to album_path
    end
  end

  def upvote
    # if upvote button is pressed than the ranking increased by 1
      find_album.update(ranking: @album.ranking + 1)
      redirect_to album_path
  end

  def destroy
    if find_album.destroy
      redirect_to albums_path
    end
  end


  private

  def album_params
    params.require(:album).permit(:name, :recorder, :description, :ranking)
  end

  def find_album
    @album = Album.find(params[:id])
  end

end
