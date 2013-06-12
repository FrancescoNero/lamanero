class ProductsController < ApplicationController
  def index

    @products_with_images = Array.new

    Product.all each do |product|
    @products_with_images << [product.title, photos.where("thumb = \"true\"").first]
    end

  end
end
