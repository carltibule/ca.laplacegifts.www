class Customer < ApplicationRecord
  has_one :home_address, class_name: 'Address', foreign_key: 'home_address_id'
  has_one :shipping_address, class_name: 'Address', foreign_key: 'shipping_address_id'
  accepts_nested_attributes_for :home_address, :shipping_address
  validates :first_name, :last_name, :home_address, :shipping_address, :email_address, :password, presence: true
end
