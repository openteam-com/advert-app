class AdvertsController < ApplicationController
  def index

  end

  def new
    @advert = Advert.new
  end

  def create
    @advert = Advert.new(advert_params)
    if @advert.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def advert_params
    params.require(:advert).permit(:title, :description, :price, :category)
  end
end
