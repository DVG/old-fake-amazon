class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.references :user, index: true, foreign_key: true
      t.string :card_number
      t.string :expiration_month
      t.string :expiration_year
      t.string :security_code
      t.timestamps null: false
    end
  end
end