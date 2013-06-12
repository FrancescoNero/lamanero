class Product < ActiveRecord::Base
  attr_accessible :description, :tech_info, :title, :category, :room, :photos
  has_and_belongs_to_many :retailers
  has_and_belongs_to_many :designers
  has_many :photos
end
