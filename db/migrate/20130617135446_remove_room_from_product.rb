class RemoveRoomFromProduct < ActiveRecord::Migration
  def up
    remove_column :products, :room
  end

  def down
    add_column :products, :room, :string
  end
end
