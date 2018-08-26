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
    @author = Author.find(params[:id])
    if @author.update(author_params)
       flash[:notice] = "item update"
      redirect_to authors_path
    else
      flash[:alert] = "please insert any text to save"
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    flash[:notice] = "item deleted"
    redirect_to authors_path
  end

  def index
    @authors = Author.all
  end

  def show
  end

  private
  def author_params
    params.require(:author).permit(:first_name,:last_name)
  end
end
