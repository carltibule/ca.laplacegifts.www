class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.references :home_address, foreign_key: true
      t.references :shipping_address, foreign_key: true
      t.string :image
      t.string :phone_number
      t.string :cell_number
      t.string :email_address
      t.string :password

      t.timestamps
    end
  end
end
