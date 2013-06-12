class CreateDesignerProductJoinTable < ActiveRecord::Migration
  def change
    create_table :designers_products, :id => false do |t|
      t.integer :designer_id
      t.integer :product_id
    end
  end
end
