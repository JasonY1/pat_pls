class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :special_price
      t.datetime :special_date
      t.integer :position

      t.timestamps null: false
    end
  end
end
