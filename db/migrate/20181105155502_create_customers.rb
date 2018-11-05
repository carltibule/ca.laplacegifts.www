class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :image
      t.string :first_address_line
      t.string :second_address_line
      t.string :city
      t.references :province, foreign_key: true
      t.string :postal_code
      t.string :country
      t.string :phone_number
      t.string :cell_number
      t.string :email_address

      t.timestamps
    end
  end
end
