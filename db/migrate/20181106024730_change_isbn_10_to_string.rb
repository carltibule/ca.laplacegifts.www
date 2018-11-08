class ChangeIsbn10ToString < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :isbn_10, :string
  end
end
