# == Schema Information
#
# Table name: shipping_methods
#
#  id             :integer
#  name           :string
#  price_per_item :decimal(8, 2)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ShippingMethod < ActiveRecord::Base
  STANDARD_SHIPPING = 1
  SUPER_SAVER_SHIPPING = 2
  PRIME_TWO_DAY = 3
  PRIME_ONE_DAY = 4
  PRIME_NO_RUSH = 5
end
