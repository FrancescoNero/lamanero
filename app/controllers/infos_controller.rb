class InfosController < ApplicationController

  def index
    redirect_to :action => "show", :id => 1
  end

  def show
    @infos = Info.all
    @info = Info.find(params[:id])
  end
end
