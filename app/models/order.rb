class Order < ActiveRecord::Base
  has_many :order_line_items
  has_many :products, through: :order_line_items
  accepts_nested_attributes_for :order_line_items

  belongs_to :shipping_method
  belongs_to :user
  belongs_to :payment_method
  belongs_to :shipping_address
end
