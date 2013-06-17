class Product < ActiveRecord::Base
  attr_accessible :description, :tech_info, :title, :type, :category, :images_attributes,
                  :images, :designer_ids, :retailer_ids, :partner_ids, :service_ids, :room_ids,
                  :category_ids

  has_and_belongs_to_many :retailers
  has_and_belongs_to_many :designers
  has_and_belongs_to_many :services
  has_and_belongs_to_many :partners
  has_and_belongs_to_many :rooms
  has_and_belongs_to_many :categories

  has_many :images, :as => :attachable

  accepts_nested_attributes_for :images
end
