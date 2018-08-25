class AuthorsController < ApplicationController
  def new
    @page_title = "add new Author"
    @author = Author.new
    @category = Author.new
    @author = Author.new
    @publisher = Author.new
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
