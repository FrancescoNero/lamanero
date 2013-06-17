class Service < ActiveRecord::Base
  attr_accessible :title

  has_and_belongs_to_many :products
  has_and_belongs_to_many :retailers
end
