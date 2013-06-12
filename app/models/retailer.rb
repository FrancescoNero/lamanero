class Retailer < ActiveRecord::Base
  attr_accessible :description, :latitude, :longitude, :title, :address, :city, :telephone, :email
  has_and_belongs_to_many :products
end
