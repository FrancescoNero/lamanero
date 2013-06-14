class DesignersController < ApplicationController
  def index
    @designers_with_images = Array.new

    Designer.all.each do |designer|
      @designers_with_images << [designer, designer.image]
    end
  end

  def new
    @designer = Designer.new
    @designer.image = Image.new
  end

  def create
    @designer = Designer.new(params[:designer])
    if @designer.save
      redirect_to @designer, :notice => "Successfully created designer."
    else
      render :action => 'new'
    end
  end

  def show
    @designer = Designer.find(params[:id])
  end


end
