Given(/^a product costing \$25$/) do
  @product_25 = create(:product, price: 25)
end

Given(/^a product costing \$11$/) do
  @product_11 = create(:product, price: 11)
end

Given(/^a user "(.*?)" with the password "(.*?)"$/) do |email, password|
  @user = create(:user, email: email, password: password)
end

When(/^I visit the log on page$/) do
  visit "/users/sign_in"
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, with: value
end

When(/^click the button with the text "(.*?)"$/) do |text|
  click_button text
end

When(/^I view the list of products$/) do
  click_link "My Fake Amazon"
end

When(/^I click on the product costing \$25$/) do
  click_link @product_25.name
end

When(/^I click on the product costing \$11$/) do
  click_link @product_11.name
end

When(/^I click the "(.*?)" button$/) do |text|
  click_button text
end

When(/^I click the "(.*?)" link$/) do |text|
  click_link text
end

Then(/^there should be the shipping option "(.*?)"$/) do |text|
  expect(page.all("span.shipping-option").map(&:text)).to include text
end

Then(/^I click on the shopping cart$/) do
  click_link "shopping-cart"
end