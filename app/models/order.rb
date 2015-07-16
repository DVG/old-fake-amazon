# == Schema Information
#
# Table name: orders
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  shipping_method_id  :integer
#  payment_method_id   :integer
#  shipping_address_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Order < ActiveRecord::Base
  has_many :line_items
  has_many :products, through: :line_items

  belongs_to :shipping_method
  belongs_to :user
  belongs_to :payment_method
  belongs_to :shipping_address
end
