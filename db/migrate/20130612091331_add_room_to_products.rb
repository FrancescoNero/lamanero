class AddRoomToProducts < ActiveRecord::Migration
  def change
    add_column :products, :room, :string
  end
end
