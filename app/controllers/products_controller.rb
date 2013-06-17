class ProductsController < ApplicationController
  def index
    @products_with_images = Array.new

    Product.all.each do |product|
    @products_with_images << [product, product.images.first]
    end
  end

  def new
    @product = Product.new
    @designers = Designer.all
    @retailers = Retailer.all
    @partners = Partner.all
    @services = Service.all
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product, :notice => "Successfully created article."
    else
      render :action => 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
