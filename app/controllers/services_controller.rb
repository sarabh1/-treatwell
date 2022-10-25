class ServicesController < ApplicationController


  def index
    @user = current_user
    @services = Service.all
  end

  def new
    @user = current_user
    @service = Service.new
  #   @shop = Shop.find(params[:id])
  end

  def create
    # @shop = Shop.find(params[:shop_id])
    @service = Service.new(service_params)
    @user = current_user
    # @service.shop = @shop
    redirect_to shops_path if @service.save
  end

  def show
    @user = current_user
    @services = Shop.all
    @service = Service.find(params[:id])
  end

  def edit
    @user = current_user
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @user = current_user
    # @service.shop = @shop
    redirect_to shops_path if @service.update(service_params_update)
  end

  def destroy
    @service = Service.find(params[:id])
    @user = current_user
    @shop = Shop.find(params[:id])
    redirect_to shops_path if @service.destroy
  end

  private

  def service_params
    params.require(:service).permit(:title, :duration, :price, :shop_id)
  end

  def service_params_update
    params.require(:service).permit(:title, :duration, :price, :shop_id)
  end
end
