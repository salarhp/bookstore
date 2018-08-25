class BooksController < ApplicationController
  def new
    @page_title = "add new book"
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
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
end
