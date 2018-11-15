class Customer < ApplicationRecord
  validates :first_name, :last_name, :email_address, :password, presence: true
end
