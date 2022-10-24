class ShopsController < ApplicationController

  def index
    @user = current_user
    @shops = Shop.all
  end

  def show
    @user = current_user
    # @service = Service.find(params[:id])
    @shops = Shop.all
    @shop = Shop.find(params[:id])
  end

  def new
    @user = current_user
    @shop = Shop.new
    @service = Service.new
  end

  def create
    @shop = Shop.new(shop_params)
    @user = current_user
    @shop.user = current_user
    redirect_to shops_path if @shop.save
  end

  def show
    @user = current_user
    # @service = Service.find(params[:id])
    @shops = Shop.all
    @shop = Shop.find(params[:id])
  end

  def edit
    @user = current_user
    @shop = Shop.find(params[:format])
  end

  def update
    @shop = Shop.find(params[:id])

    @user = current_user
    @shop.user = @user
    redirect_to shops_path if @shop.update(shop_params_update)
  end

  def destroy
    @shop = Shop.find(params[:format])
    redirect_to shops_path if @shop.destroy
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :tel, :email, :address, :description, :user)
  end

  def shop_params_update
    params.require(:shop).permit(:name, :tel, :email, :address, :description)
  end
end
