# == Schema Information
#
# Table name: shipping_methods
#
#  identifier     :integer          primary key
#  name           :string
#  price_per_item :decimal(8, 2)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ShippingMethod < ActiveRecord::Base
  self.primary_key = "identifier"
  STANDARD_SHIPPING = 1
  RUSH_SHIPPING = 2
  SUPER_SAVER_SHIPPING = 3
  PRIME_TWO_DAY = 4
  PRIME_ONE_DAY = 5
  PRIME_NO_RUSH = 6

  STANDARD_DELIVERY_OPTIONS = [STANDARD_SHIPPING]
  OVER_35_DELIVERY_OPTIONS = [RUSH_SHIPPING, SUPER_SAVER_SHIPPING]
  PRIME_DELIVERY_OPTIONS = [PRIME_TWO_DAY, PRIME_ONE_DAY, PRIME_NO_RUSH]

  def self.options_for_user(user)
    if user.prime_member?
      self.where(identifier: PRIME_DELIVERY_OPTIONS)
    elsif user.cart.subtotal > 35
      self.where(identifier: OVER_35_DELIVERY_OPTIONS)
    else
      self.where(identifier: STANDARD_DELIVERY_OPTIONS)
    end
  end

  def label
    case self.identifier
    when STANDARD_SHIPPING then "Standard USPS Parcel Post (3-5 Business Days)"
    when SUPER_SAVER_SHIPPING then "Super Saver Shipping (3-5 Business Days)"
    when PRIME_TWO_DAY then "Prime Two Day Shipping"
    when PRIME_ONE_DAY then "Prime Next Day Delivery"
    when PRIME_NO_RUSH then "Prime No Rush Shipping (5-7 Business Days). Get $1 Digital Product Credit!"
    when RUSH_SHIPPING then "Rush Shipping (1-2 Business Days)"
    end
  end

  def shipping_cost(user)
    user.cart.total_items * price_per_item
  end
end
