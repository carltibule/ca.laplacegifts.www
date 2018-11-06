class Product < ApplicationRecord
  belongs_to :category
  belongs_to :author, optional: true
  mount_uploader :image, ImageUploader
end
