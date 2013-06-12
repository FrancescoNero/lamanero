class CreatePhotoProductJoinTable < ActiveRecord::Migration
  def change
    create_table :photos_products, :id => false do |t|
      t.integer :photo_id
      t.integer :product_id
    end
  end
end
