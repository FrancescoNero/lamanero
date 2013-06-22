class ProductsController < ApplicationController

  def index
    redirect_to '/not_implemented.html'
  end

  def new
    @product = Product.new
    @designers = Designer.all
    @retailers = Retailer.all
    @partners = Partner.all
    @services = Service.all
    @rooms = Room.all
    @categories = Category.all
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product, :notice => "Successfully created article."
    else
      render :action => 'new'
    end
  end

  def retailers
    @retailers = Product.find(params[:id]).retailers
  end

  def show
    @product = Product.find(params[:id])
    @product_designers = @product.designers
    @product_services = @product.services
    @product_partners = @product.partners

  end

  def top
    redirect_to '/not_implemented.html'
  end

end
