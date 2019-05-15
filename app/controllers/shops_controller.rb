class ShopsController < ApplicationController
# before_action :set_shop [:show, :edit, :update, :destroy]

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def edit
  end
end
