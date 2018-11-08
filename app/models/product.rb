class Product < ApplicationRecord
  belongs_to :author, optional: true
  has_many :categories, through: :product_categories
  mount_uploader :image, ImageUploader
end
