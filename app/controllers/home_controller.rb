class HomeController < ApplicationController

  def index
    @word = Word.all # get top ten
  end

  def create

  end

end
