class Retailer < ActiveRecord::Base
  attr_accessible :description, :latitude, :longitude, :title, :address, :city, :telephone, :email,
                  :images, :images_attributes

  has_and_belongs_to_many :products

  has_and_belongs_to_many :services

  has_many :images, :as => :attachable

  accepts_nested_attributes_for :images
end
