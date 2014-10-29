class WordsController < ApplicationController

  def index


  end

  def new
    @word = Word.new

  end

  def create
    if Word.create(word_params)
      redirect_to root_path
    end
  end

  def word_params
    params.require(:word).permit(:word, :language, :definition)
  end

end
