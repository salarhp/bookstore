class BooksController < ApplicationController
  def new
    @page_title = "add new book"
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
       flash[:notice] = "new item created"
      redirect_to books_path
    else
      flash[:alert] = "please insert any text to save"
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def distroy
  end

  def index
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit(:title, :category_id,:author_id,:publisher_id, :isbn, :buy, :format, :excerpt, :pages, :year)
  end
end
