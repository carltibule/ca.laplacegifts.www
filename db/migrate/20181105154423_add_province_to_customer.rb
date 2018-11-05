class AddProvinceToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :province, :province_id, :integer
  end
end
