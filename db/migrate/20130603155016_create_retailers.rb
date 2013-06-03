class CreateRetailers < ActiveRecord::Migration
  def change
    create_table :retailers do |t|
      t.string :title
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
