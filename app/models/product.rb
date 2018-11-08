class Product < ApplicationRecord
  belongs_to :author, optional: true
  has_many :product_categories
  has_many :categories, through: :product_categories
  mount_uploader :image, ImageUploader

  validates :title, :product_type, :image, :price, :qoh_new, :qoh_used, presence: true
  validates :qoh_new, :qoh_used, numericality: {only_integer: true}
  validates :price, numericality: true
  validates :length, :width, :height, :weight, numericality: true, allow_blank: true
end
