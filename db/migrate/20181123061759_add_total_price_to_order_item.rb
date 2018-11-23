class AddTotalPriceToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :total_price, :decimal
  end
end
