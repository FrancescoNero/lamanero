class Designer < ActiveRecord::Base
  attr_accessible :biography, :title
  has_and_belongs_to_many :products
end
