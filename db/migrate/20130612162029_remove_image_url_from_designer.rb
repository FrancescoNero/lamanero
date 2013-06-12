class RemoveImageUrlFromDesigner < ActiveRecord::Migration
  def up
    remove_column :designers, :image_url
  end

  def down
    add_column :designers, :image_url, :string
  end
end
