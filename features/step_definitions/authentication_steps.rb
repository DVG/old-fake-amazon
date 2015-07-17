Given(/^I am logged in as a regular user$/) do
  @user = create(:user)
  visit "/users/sign_in"
  fill_in "user_email", with: @user.email
  fill_in "user_password", with: @user.password
  click_button "Sign in using our secure server"
end


Given(/^I am logged in as a prime user$/) do
  @user = create(:user, prime_member: true)
  visit "/users/sign_in"
  fill_in "user_email", with: @user.email
  fill_in "user_password", with: @user.password
  click_button "Sign in using our secure server"
end