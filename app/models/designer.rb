class Designer < ActiveRecord::Base
  attr_accessible :biography, :title, :image_attributes, :image
  has_and_belongs_to_many :products

  has_one :image, :as => :attachable

  accepts_nested_attributes_for :image
end
