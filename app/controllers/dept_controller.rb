class DeptController < ApplicationController
  before_action :set_sub
  def index
    @depts = @shop.depts
  end

  def show
  end

  def new
  end

  def edit
  end
  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
