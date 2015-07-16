class CreateShippingMethods < ActiveRecord::Migration
  def change
    create_table :shipping_methods, id: false do |t|
      t.integer :identifier
      t.string :name
      t.decimal :price_per_item, precision: 8, scale: 2
      t.timestamps null: false
    end
  end
end
