class ServicesController < ApplicationController
  has_many :employees, dependent: :destroy

  def index
    @user = current_user
    @services = Service.all
    @service = Service.find(params[:id])
    @shop = Shop.find(params[:id])
  end

  def show
    @user = current_user
    @services = Service.all
    @service = Service.find(params[:id])
    @shop = Shop.find(params[:id])
  end

end
