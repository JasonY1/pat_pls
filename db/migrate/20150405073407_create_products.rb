class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :special_price
      t.datetime :special_date
      t.decimal :abv
      t.boolean :ontap
      t.datetime :tapdate
      t.boolean :available
      t.string :image_url
      t.string :brewer
      t.string :style

      t.timestamps null: false
    end
  end
end
