class HomeController < ApplicationController

  def index
    @living  = Room.find(1)
    @kitchen = Room.find(2)
    @bed     = Room.find(3)
    @sofas   = Category.find(1)
    @chairs  = Category.find(2)
    @tables  = Category.find(3)
    @lamps   = Category.find(4)
  end

end
