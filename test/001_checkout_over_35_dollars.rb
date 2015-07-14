require 'watir-webdriver'

browser = Watir::Browser.new :chrome
browser.goto "http://localhost:5100"

browser.link(class: "dropdown-toggle").click
browser.link(text: "Sign In").click

browser.text_field(id: "user_email").set "bradley.temple@gmail.com"
browser.text_field(id: "user_password").set "supersecret"
browser.input(type: "submit", value: "Create User").click

browser.link(text: "Disgaea 3: Absence of Detention").click

browser.buttons.first.click

browser.link(href: "/carts").click

browser.link(text: "Proceed to Checkout").click
sleep 2

browser.close