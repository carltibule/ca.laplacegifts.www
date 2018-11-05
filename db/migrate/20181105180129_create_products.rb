class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :product_type
      t.string :product_format
      t.string :product_language
      t.integer :isbn_10
      t.integer :isbn_13
      t.decimal :price
      t.integer :qoh_new
      t.integer :qoh_used
      t.decimal :length
      t.decimal :width
      t.decimal :height
      t.decimal :weight
      t.references :category, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
