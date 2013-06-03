class Product < ActiveRecord::Base
  attr_accessible :description, :tech_info, :title
end
