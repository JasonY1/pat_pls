class Product < ActiveRecord::Base
  has_attached_file :image_url, style: { large: "360x203>", thumb: "180x101>" }, auto_save: true
  validates_attachment_content_type :image_url, content_type: /\Aimage\/.*\Z/

  belongs_to :category

  scope :same_category, -> { joins(:category).where(Product.category => category) }
end
