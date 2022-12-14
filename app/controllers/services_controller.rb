class ServicesController < ApplicationController
  def index
    @user = current_user
    @services = Service.all
  end

  def new
    @user = current_user
    @service = Service.new
    # @shop = Shop.find(params[:id])
  end

  def create
    # @shop = Shop.find(params[:id])
    @service = Service.new(service_params)
    # @service.shop = @shop
    @user = current_user
    redirect_to shop_path(@service.shop.id) if @service.save
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
    redirect_to shop_path(@service.shop.id) if @service.update(service_params_update)
  end

  def destroy
    @service = Service.find(params[:id])
    @user = current_user
  #  @shop = Shop.find(params[:id])
    @service.shop = @shop
    # @shop = Shop.find(params[:shop_id])
    redirect_to shops_path if @service.destroy
  end

  private

  def service_params
    params.require(:service).permit(:title, :duration, :price, :shop_id, employees: [])
  end

  def service_params_update
    params.require(:service).permit(:title, :duration, :price, employees: [])
  end
end
