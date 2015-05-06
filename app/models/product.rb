class Product < ActiveRecord::Base
  belongs_to :category

  scope :same_category, -> { joins(:category).where(Product.category => category) }
end
