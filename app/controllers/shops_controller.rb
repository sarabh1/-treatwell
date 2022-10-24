class ShopsController < ApplicationController
  # def new
  #   @shop = Shop.new
  #   @user= current_user
  # end
  # def create
  #   @shop = Shop.new
  #   @user= current_user
  # end
  def index
    @user = current_user
    @shops = Shop.all
  end
end
