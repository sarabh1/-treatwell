class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # @shops = Shop.all
    # @shop = Shop.find(params[:id])
    # @service = Service.find(params[:id])
  end
end
