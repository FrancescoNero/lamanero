class RemoveImageUrlFromRetailers < ActiveRecord::Migration
  def up
    remove_column :retailers, :image_url
  end

  def down
    add_column :retailers, :image_url, :string
  end
end
