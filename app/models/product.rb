class Product < ActiveRecord::Base
  attr_accessible :description, :tech_info, :title, :type, :category, :images_attributes, :images

  has_and_belongs_to_many :retailers
  has_and_belongs_to_many :designers

  has_many :images, :as => :attachable

  accepts_nested_attributes_for :images
end
