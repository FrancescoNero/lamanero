class HomeController < ApplicationController

  def index
    @living = Room.find(1)
    @kitchen = Room.find(2)
    @bed = Room.find(3)
  end

end
