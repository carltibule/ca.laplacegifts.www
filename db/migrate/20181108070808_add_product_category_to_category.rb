class AddProductCategoryToCategory < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :products, foreign_key: true
  end
end
