class HomeController < ApplicationController

  def index
    @word = Word.all # get top ten
    @album = Album.all
    @picture= Picture.all
  end

  def create

  end

end
