class CreateShippingAddresses < ActiveRecord::Migration
  def change
    create_table :shipping_addresses do |t|
      t.references :user, index: true, foreign_key: true
      t.string :addressee
      t.string :street_address
      t.string :city
      t.string :state_code, length: 2
      t.string :zip_code, length: 5
      t.timestamps null: false
    end
  end
end
