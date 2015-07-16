class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.references :shipping_method, index: true, foreign_key: true
      t.references :payment_method, index: true, foreign_key: true
      t.references :shipping_address, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
