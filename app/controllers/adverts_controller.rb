class AdvertsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    #TODO: implement sunspot
    @adverts = Advert.all
  end

  def show
    #TODO: implement show
    @advert = Advert.find(params[:id])
  end

  def new
    @advert = Advert.new
  end

  def create
    #TODO: implement form
    @advert = current_user.adverts.create(advert_params)
    if @advert.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def advert_params
    params.require(:advert).permit(:title, :description, :price, :category_id, :advert_type, :phone)
  end
end
