class AddAddressAndCityAndTelephoneAndEmailToRetailers < ActiveRecord::Migration
  def change
    add_column :retailers, :address, :string
    add_column :retailers, :city, :string
    add_column :retailers, :telephone, :string
    add_column :retailers, :email, :string
  end
end
