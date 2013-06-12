class CreatePhotoRetailerJoinTable < ActiveRecord::Migration
  def change
    create_table :photos_retailers, :id => false do |t|
      t.integer :photo_id
      t.integer :retailer_id
    end
  end
end
