class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :first_address_line
      t.string :second_address_line
      t.string :city
      t.references :province, foreign_key: true
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
