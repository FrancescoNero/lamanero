class CreateProductRetailerJoinTable < ActiveRecord::Migration

  def change
    create_table :products_retailers, :id => false do |t|
      t.integer :product_id
      t.integer :retailer_id
    end
  end

end