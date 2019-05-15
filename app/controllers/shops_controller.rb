class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update]

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
    # render partial: "form"
  end

  def create
    @shop = Shop.new(shop_params)

    if @shop.save
      redirect_to shops_path(@shop)
    else
      render :new
    end

    def update

      # @shop = Shop.find(params[:id])

      if @shop.update(shop_params)
        redirect_to shops_path
      else
        render :edit
      end
    end

  end

  def edit
    render partial: "form"
  end
  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
      params.require(:shop).permit(:isle)
  end

end
