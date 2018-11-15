class RemoveShippingAddressIdFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :shipping_address_id
  end
end
