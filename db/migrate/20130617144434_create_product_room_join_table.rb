class CreateProductRoomJoinTable < ActiveRecord::Migration
  def change
    create_table :products_rooms, :id => false do |t|
      t.integer :product_id
      t.integer :room_id
    end
  end
end
