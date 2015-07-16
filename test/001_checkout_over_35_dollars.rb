require 'watir-webdriver'

browser = Watir::Browser.new :chrome
browser.goto "http://localhost:5100"

browser.link(class: "dropdown-toggle").click
browser.link(text: "Sign In").click
browser.text_field(id: "user_email").set "bradley.temple@gmail.com"
browser.text_field(id: "user_password").set "supersecret"
browser.input(type: "submit", value: "Sign in using our secure server").click

browser.link(text: "Disgaea 3: Absence of Detention").click

browser.buttons.first.click

browser.link(href: "/carts").click

browser.link(text: "Proceed to Checkout").click

browser.link(text: "My Fake Amazon").click

browser.link(text: "Playstation Vita").click
browser.buttons.first.click

browser.link(href: "/carts").click
browser.link(text: "Proceed to Checkout").click

browser.text_field(id: "shipping_address_addressee").set "Bradley Temple"
browser.text_field(id: "shipping_address_street_address").set "123 Fake Street"
browser.text_field(id: "shipping_address_city").set "Grove City"
browser.select(id: "shipping_address_state_code").select "OH"
browser.text_field(id: "shipping_address_zip_code").set "43123"
browser.input(type: "submit", value: "Ship to this address").click

browser.text_field(id: "payment_method_name_on_card").set "Bradley Temple"
browser.text_field(id: "payment_method_card_number").set "4242 4242 4242 4242"
browser.text_field(id: "payment_method_expiration").set "1016"
browser.text_field(id: "payment_method_security_code").set "123"
browser.input(type: "submit", value: "Add Payment Method").click

browser.radio(id: "order_shipping_method_id_2").set

browser.link(text: "Place Your Order").click

sleep 2
browser.close