class CreateCategoryProductJoinTable < ActiveRecord::Migration
  def change
    create_table :categories_products, :id => false do |t|
      t.integer :categories_id
      t.integer :products_id
    end
  end
end
