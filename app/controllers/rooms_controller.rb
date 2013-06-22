class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])

    room_products = Room.find(params[:id]).products

    @products_with_images = Array.new

    room_products.each do |product|
      @products_with_images << [product, product.images.first]
    end
  end

  def index
    @rooms = Room.all
  end

end
