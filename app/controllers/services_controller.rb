class ServicesController < ApplicationController


  def index
    @user = current_user
    @services = Service.all
  end

  def new
    @user = current_user
    @service = Service.new
    # @shop = Shop.find(params[:id])
    # @service.shop = @shop
  end

  def create
    @shop = Shop.find(params[:id])
    @service = Service.new(service_params)
    @user = current_user
    @service.shop = @shop
    redirect_to services_path if @service.save
  end

  def show
    @user = current_user
    # @service = Service.find(params[:id])
    @services = Shop.all
    @service = Service.find(params[:id])
  end

  def edit
    @user = current_user
    @service = Service.find(params[:format])
  end

  def update
    @service = Service.find(params[:id])
    @user = current_user
    @service.shop = @shop
    redirect_to services_path if @service.update(service_params_update)
  end

  def destroy
    @service = Service.find(params[:format])
    redirect_to services_path if @service.destroy
  end

  private

  def service_params
    params.require(:service).permit(:title, :duration, :price, :shop)
  end

  def service_params_update
    params.require(:service).permit(:name, :duration, :price)
  end
end
