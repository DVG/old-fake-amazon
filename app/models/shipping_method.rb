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

  STANDARD_DELIVERY_OPTIONS = [STANDARD_SHIPPING]
  OVER_35_DELIVERY_OPTIONS = [STANDARD_SHIPPING, SUPER_SAVER_SHIPPING]
  PRIME_DELIVERY_OPTIONS = [PRIME_TWO_DAY, PRIME_ONE_DAY, PRIME_NO_RUSH]

  def self.options_for_user(user)
    if user.prime_member?
      self.where(id: PRIME_DELIVERY_OPTIONS)
    elsif user.cart.subtotal > 35
      self.where(id: OVER_35_DELIVERY_OPTIONS)
    else
      self.where(id: STANDARD_DELIVERY_OPTIONS)
    end
  end

  def label(user)
    case self
    when STANDARD_SHIPPING then "Standard USPS Parcel Post (3-5 Business Days)"
    when SUPER_SAVER_SHIPPING then "Super Saver Shipping (3-5 Business Days)"
    when PRIME_TWO_DAY then "Prime Two Day Shipping"
    when PRIME_ONE_DAY then "Prime Next Day Delivery"
    when PRIME_NO_RUSH then "Prime No Rush Shipping (5-7 Business Days). Get $1 Digital Product Credit!"
    end
  end

  def shipping_cost(user)
    user.cart.total_items * price_per_item
  end
end
