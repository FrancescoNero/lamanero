class Category < ActiveRecord::Base
  attr_accessible :name, :image_attributes
  has_one :image, :as => :attachable
  has_and_belongs_to_many :products

  accepts_nested_attributes_for :image
end
