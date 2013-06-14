class Image < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true
  attr_accessible :alt, :image

  mount_uploader :image, FileUploader
end
