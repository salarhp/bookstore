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
    @publisher = Publisher.find(params[:id])
    if @publisher.update(publisher_params)
       flash[:notice] = "item update"
      redirect_to publishers_path
    else
      flash[:alert] = "please insert any text to save"
    end
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy
    flash[:notice] = "item deleted"
    redirect_to publishers_path
  end

  def index
    @publishers = Publisher.all
  end

  def show
  end


  private
  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
