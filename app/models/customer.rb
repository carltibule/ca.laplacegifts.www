class Customer < ApplicationRecord
  belongs_to :province, optional: true
  validates :first_name, :last_name, :first_address_line, :city, :postal_code, :email_address, :password, presence: true
  validates :postal_code, format: {with: /[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]/,
    message: "Invalid Canadian postal code"}
  validates :email_address, format: {with: /[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+/,
    message: "Invalid email address"}
  validates :phone_number, :cell_number, format: {with: /((\d{3})-|^\d{3}[.-]?)?\d{3}[.-]?\d{4}/,
    message: "Invalid phone/cellphone number"}, allow_blank: true
end
