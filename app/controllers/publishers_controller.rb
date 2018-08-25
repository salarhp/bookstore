class PublishersController < ApplicationController
  def new
    page_title = "add new Publisher"
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:notice] = "new item created"
      redirect_to publishers_path
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
  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
