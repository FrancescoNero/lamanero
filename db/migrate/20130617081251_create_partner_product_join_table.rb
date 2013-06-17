class CreatePartnerProductJoinTable < ActiveRecord::Migration
  def change
    create_table :partners_products, :id => false do |t|
      t.integer :partner_id
      t.integer :product_id
    end
  end
end
