class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])

    @category_products = Category.find(params[:id]).products

    @products_with_images = Array.new

    @category_products.each do |product|
      @products_with_images << [product, product.images.first]
    end

  end
end
