class AddColumnsToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :photo, :string
    add_column :customers, :first_address_line, :string
    add_column :customers, :second_address_line, :string
    add_column :customers, :city, :string
    add_reference :customers, :province, foreign_key: true
    add_column :customers, :postal_code, :string
    add_column :customers, :phone_number, :string
  end
end
