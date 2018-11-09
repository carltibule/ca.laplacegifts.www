class Product < ApplicationRecord
  belongs_to :author, optional: true
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories, dependent: :destroy
  mount_uploader :image, ImageUploader

  validates :title, :price, :qoh_new, presence: true
  validates :qoh_new, numericality: {only_integer: true}
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :sale_discount, numericality: {greater_than_or_equal_to: 0.01, less_than_or_equal_to: 1}, allow_blank: true
  validates :length, :width, :height, :weight, numericality: {greater_than_or_equal_to: 0}, allow_blank: true
  validates :qoh_used, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank: true
end
