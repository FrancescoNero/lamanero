class Designer < ActiveRecord::Base
  attr_accessible :biography, :image_url, :title
  has_and_belongs_to_many :products
  has_one :photo
end
