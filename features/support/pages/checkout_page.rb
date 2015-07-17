class CheckoutPage < SitePrism::Page
  set_url "/carts/1/checkout"

  STANDARD_SHIPPING_LABEL = "$5.99 Standard USPS Parcel Post (3-5 Business Days)"

  # Returns an array of strings showing the currently available shipping options
  def shipping_options
    all("span.shipping-option").map(&:text)
  end

  def has_only_standard_shipping_option?
    shipping_options == [STANDARD_SHIPPING_LABEL]
  end

  def has_shipping_options?(cucumber_table)
    shipping_options == cucumber_table.raw.flatten
  end
end