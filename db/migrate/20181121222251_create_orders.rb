class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.text :notes
      t.decimal :subtotal
      t.decimal :gst
      t.decimal :hst
      t.decimal :pst
      t.decimal :total
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
