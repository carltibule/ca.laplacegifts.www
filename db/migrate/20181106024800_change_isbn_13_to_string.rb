class ChangeIsbn13ToString < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :isbn_13, :string
  end
end
