class ChangeIsbnToBeBigintInProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :isbn_10, :bigint
    change_column :products, :isbn_13, :bigint
  end
end
