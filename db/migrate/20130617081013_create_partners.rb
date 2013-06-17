class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :title

      t.timestamps
    end
  end
end
