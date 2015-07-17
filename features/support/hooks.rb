Before do
  ShippingMethod.create identifier: ShippingMethod::STANDARD_SHIPPING, name: "Standard Shipping", price_per_item: 5.99
  ShippingMethod.create identifier: ShippingMethod::SUPER_SAVER_SHIPPING, name: "FREE Super Saver Shipping", price_per_item: 0
  ShippingMethod.create identifier: ShippingMethod::PRIME_TWO_DAY, name: "FREE Prime 2-Day Shipping", price_per_item: 0
  ShippingMethod.create identifier: ShippingMethod::PRIME_ONE_DAY, name: "$3.99 Prime Overnight Shipping", price_per_item: 3.99
  ShippingMethod.create identifier: ShippingMethod::PRIME_NO_RUSH, name: "FREE No-Rush Shipping", price_per_item: 0
end