class LoginPage < SitePrism::Page
  set_url "/users/sign_in"

  element :email, "#user_email"
  element :password, "#user_password"
  element :login_button, "input[value='Sign in using our secure server']"

  def login_as(user)
    email.set user.email
    password.set user.password
    login_button.click
  end
end