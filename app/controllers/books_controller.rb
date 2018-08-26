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
    @book = Book.find(params[:id])
    if @book.update(book_params)
       flash[:notice] = "item update"
      redirect_to books_path
    else
      flash[:alert] = "please insert any text to save"
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "item deleted"
    redirect_to books_path
  end

  def index
    @books = Book.all
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end

  private
  def book_params
    params.require(:book).permit(:title, :category_id,:author_id,:publisher_id, :isbn, :buy, :price, :format, :excerpt, :pages, :year, :coverpath)
  end
end
