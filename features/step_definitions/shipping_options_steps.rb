Given(/^I have a cart with 1 product worth \$(\d+)$/) do |price|
  @user.cart.add create(:product, price: price.to_f)
end

When(/^I checkout$/) do
  @app.navigate_to :checkout_page
end

Then(/^I should only have the option for standard shipping$/) do
  @app.on(:checkout_page) do |page|
    expect(page).to have_only_standard_shipping_option
  end

end

Then(/^I should have the following shipping options:$/) do |options|
  @app.on(:checkout_page) do |page|
    expect(page).to have_shipping_options options
  end
end
