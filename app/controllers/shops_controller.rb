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

  def edit
    @user = current_user
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    @user = current_user
    @shop.user = @user
    redirect_to shops_path if @shop.update(shop_params_update)
  end

  def destroy
    @shop = Shop.find(params[:id])
    # @user = current_user
    # @shop.user = current_user
    if @shop.destroy
      redirect_to shops_path
    # else
    #   Rails.logger.info(@shop.errors.full_messages)
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :telephone, :email, :address, :description, :user_id, photos: [])
  end

  def shop_params_update
    params.require(:shop).permit(:name, :telephone, :email, :address, :description, photos: [])
  end
end
