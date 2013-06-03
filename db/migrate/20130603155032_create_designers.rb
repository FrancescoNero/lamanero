class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :title
      t.text :biography
      t.string :image_url

      t.timestamps
    end
  end
end
