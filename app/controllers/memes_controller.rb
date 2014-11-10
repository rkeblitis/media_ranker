class MemesController < ApplicationController

  def index
    @meme = Meme.all

  end

  def new
    @meme = Meme.new

  end

  def create
    if Meme.create(meme_params)
      redirect_to root_path
    end
  end

  def show
    find_meme
  end

  def edit
    find_meme
  end

  def update
    if @meme = find_meme.update(meme_params)
      redirect_to meme_path
    end
  end

  def upvote
    # if upvote button is pressed than the ranking increased by 1
      find_meme.update(ranking: @meme.ranking + 1)
      redirect_to meme_path
  end

  def destroy
    if find_meme.destroy
      redirect_to memes_path
    end
  end


  private

  def meme_params
    params.require(:meme).permit(:name, :author, :description, :ranking)
  end

  def find_meme
    @meme = Meme.find(params[:id])
  end

end
