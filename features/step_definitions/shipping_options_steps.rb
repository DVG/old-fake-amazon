Given(/^I have a cart with 1 product worth \$(\d+)$/) do |price|
  @user.cart.add create(:product, price: price.to_f)
end

When(/^I checkout$/) do
  visit "/carts/1/checkout"
end

Then(/^I should only have the option for standard shipping$/) do
  expect(page.all("span.shipping-option").map(&:text)).to include "$5.99 Standard USPS Parcel Post (3-5 Business Days)"
end

Then(/^I should have the following shipping options:$/) do |table|
  expect(page.all("span.shipping-option").map(&:text)).to eq table.raw.flatten
end
