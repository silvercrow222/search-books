class BooksController < ApplicationController
  def index
  end
  def new
    @book = Book.new
  end
  def create
    Book.create(book_params)
  end
  def search
    @books = Book.search(params[:keyword])
  end

  private
    def book_params
      params.require(:book).permit(:title, :author)
    end
end
