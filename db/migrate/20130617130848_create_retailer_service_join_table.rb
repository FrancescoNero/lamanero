class CreateRetailerServiceJoinTable < ActiveRecord::Migration
  def change
    create_table :retailers_services, :id => false do |t|
      t.integer :retailer_id
      t.integer :service_id
    end
  end
end
