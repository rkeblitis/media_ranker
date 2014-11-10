class HomeController < ApplicationController

  def index
    @word = Word.all # get top ten
    @album = Album.all
    @meme= Meme.all
  end

  def create

  end

end
