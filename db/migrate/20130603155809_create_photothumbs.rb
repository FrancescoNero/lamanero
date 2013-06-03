class CreatePhotothumbs < ActiveRecord::Migration
  def change
    create_table :photothumbs do |t|
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end
