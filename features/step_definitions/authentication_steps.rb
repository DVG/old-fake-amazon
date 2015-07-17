Given(/^I am logged in as a regular user$/) do
  @user = create(:user)
  @app.login_as(@user)
end


Given(/^I am logged in as a prime user$/) do
  @user = create(:user, prime_member: true)
  @app.login_as(@user)
end