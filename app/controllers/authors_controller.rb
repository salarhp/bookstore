class AuthorsController < ApplicationController
  def new
    @page_title = "add new Author"
    @author = Author.new
    @category = Author.new
    @author = Author.new
    @publisher = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "new item created"
      redirect_to authors_path
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
  def author_params
    params.require(:author).permit(:first_name,:last_name)
  end
end
