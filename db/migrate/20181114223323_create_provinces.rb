class CreateProvinces < ActiveRecord::Migration[5.2]
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :postal_abbreviation
      t.decimal :gst
      t.decimal :hst
      t.decimal :pst

      t.timestamps
    end
  end
end
