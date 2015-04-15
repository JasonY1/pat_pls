class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :special_price
      t.datetime :special_date
      t.boolean :available
      t.string :image_url
      t.string :style

      t.timestamps null: false
    end
  end
end
