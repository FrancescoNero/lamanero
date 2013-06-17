class RetailersController < ApplicationController
  def show
    @retailer = Retailer.find(params[:id])
    @retailer_images = Retailer.find(params[:id]).images
    @retailer_services = Retailer.find(params[:id]).services
  end
end
