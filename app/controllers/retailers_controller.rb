class RetailersController < ApplicationController

  def index
    redirect_to '/not_implemented.html'
  end

  def show
    @retailer = Retailer.find(params[:id])
    @retailer_images = Retailer.find(params[:id]).images
    @retailer_services = Retailer.find(params[:id]).services
  end

  def new
    @retailer = Retailer.new
    @services = Service.all
  end

  def create
    @retailer = Retailer.new(params[:retailer])
    if @retailer.save
      redirect_to @retailer, :notice => "Successfully created retailer."
    else
      render :action => 'new'
    end
  end
end
