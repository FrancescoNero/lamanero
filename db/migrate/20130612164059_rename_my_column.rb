class RenameMyColumn < ActiveRecord::Migration
  def up
    rename_column :products, :type, :category
  end

  def down
  end
end
