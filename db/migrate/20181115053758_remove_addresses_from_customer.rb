class RemoveAddressesFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :home_address_id
  end
end
