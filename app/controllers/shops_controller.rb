class ShopsController < ApplicationController

  def index
    @user = current_user
    @shops = Shop.all
  end

  def new
    @user = current_user
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @user = current_user
    @shop.user = current_user
    redirect_to shops_path if @shop.save
  end



  private

  def shop_params
    params.require(:shop).permit(:name, :tel, :email, :address, :description, :user)
  end

  def nanny_params_update
    params.require(:shop).permit(:name, :tel, :email, :address, :description)
  end
end
