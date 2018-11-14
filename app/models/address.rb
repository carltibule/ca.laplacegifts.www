class Address < ApplicationRecord
  belongs_to :province
  validates :first_address_line, :city, :province, :postal_code, :country, presence: true
end
