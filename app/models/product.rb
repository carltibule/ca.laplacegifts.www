class Product < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :author, optional: true
  mount_uploader :image, ImageUploader
end
