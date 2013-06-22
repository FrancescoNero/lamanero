class ProductsController < ApplicationController

  def index
    redirect_to categories_path
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

    if(params[:gt])
      @gt = true
      case params[:gt]
        when 'living'
          type_of = Room.find(1)
        when 'kitchen'
          type_of = Room.find(2)
        when 'bed'
          type_of = Room.find(3)
        when 'sofas'
          type_of = Category.find(1)
        when 'chairs'
          type_of = Category.find(2)
        when 'tables'
          type_of = Category.find(3)
        when 'lamps'
          type_of = Category.find(4)
      end
      create_prev_next type_of
    end

  end

  def top
    redirect_to '/not_implemented.html'
  end

  def dna
    redirect_to '/not_implemented.html'
  end

  def create_prev_next type_of
      @index = url_for type_of
      products = type_of.products
      products.order(params[:id])
    if products.index(@product) != 0
      @prev_prod = products.at(products.index(@product)-1)
    else
      @prev_prod = products.last
    end

    if products.index(@product) != products.size-1
      @next_prod = products.at(products.index(@product)+1)
    else
      @next_prod = products.first
    end
  end

end
