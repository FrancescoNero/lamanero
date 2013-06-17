class Category < ActiveRecord::Base
  attr_accessible :name, :image_attributes
  has_one :image, :as => :attachable
  accepts_nested_attributes_for :image
end
