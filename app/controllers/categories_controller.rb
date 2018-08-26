class CategoriesController < ApplicationController
  def new
    @page_title = "add new Category"
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "category created"
      redirect_to categories_path
    else
      flash[:alert] = "please insert any text to save"
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
       flash[:notice] = "item update"
      redirect_to categories_path
    else
      flash[:alert] = "please insert any text to save"
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "item deleted"
    redirect_to categories_path
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @books = @category.books
  end
  
  private
  def category_params
    params.require(:category).permit(:name)
  end
end
