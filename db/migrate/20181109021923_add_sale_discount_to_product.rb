class AddSaleDiscountToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sale_discount, :decimal
  end
end
