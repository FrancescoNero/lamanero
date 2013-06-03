class AddImageUrlToRetailers < ActiveRecord::Migration
  def change
    add_column :retailers, :image_url, :string
  end
end
