class AddImageUrlColumnsToProducts < ActiveRecord::Migration
  def change
    add_attachment :products, :image_url
  end
end
