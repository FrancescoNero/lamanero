class Product < ActiveRecord::Base
  attr_accessible :description, :tech_info, :title, :type, :room
  has_and_belongs_to_many :retailers
end
