class InfosController < ApplicationController
  def index
    @infos = Info.all
    @first_info = Info.first
  end
end
