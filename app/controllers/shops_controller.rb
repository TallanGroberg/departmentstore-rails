class ShopsController < ApplicationController
 # before_action :set_shop [:show ]

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
    render partial: "form"
  end

  def create
    @shop = Shop.new(shop_params)

    if @shop.save
      redirect_to shops_path(@shop)
    else
      render :new 

    end

  end

  def edit
  end
  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
      params.require(:shop).permit(:isle)
  end

end
