class WordsController < ApplicationController

  def index
    @word = Word.all

  end

  def new
    @word = Word.new

  end

  def create
    if Word.create(word_params)
      redirect_to root_path
    end
  end

  def show
    find_word
  end

  def edit
    find_word
  end

  def update
    if @word = find_word.update(word_params)
      redirect_to word_path
    end
  end

  def upvote
    # if upvote button is pressed than the ranking increased by 1
      find_word.update(ranking: @word.ranking + 1)
      redirect_to word_path
  end

  def destroy
    if find_word.destroy
      redirect_to words_path
    end
  end


  private

  def word_params
    params.require(:word).permit(:word, :language, :definition, :ranking)
  end

  def find_word
    @word = Word.find(params[:id])
  end

end
