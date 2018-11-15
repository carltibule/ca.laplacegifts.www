class Customer < ApplicationRecord
  has_many :home_address, class_name: 'Address', foreign_key: 'home_address_id'
  has_many :shipping_address, class_name: 'Address', foreign_key: 'shipping_address_id'
  validates :first_name :last_name :home_address, :shipping_address, :email_address, :password, validates: true
  
end
