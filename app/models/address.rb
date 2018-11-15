class Address < ApplicationRecord
  belongs_to :province
  belongs_to :customer
  validates :first_address_line, :city, :province, :postal_code, :country, :customer, presence: true
end
