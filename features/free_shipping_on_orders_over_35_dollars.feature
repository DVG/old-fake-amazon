Feature: Free Shipping on Orders over $35

  Scenario: Free Shipping on Orders over $35
    Given a product costing $25
    And a product costing $11
    And a user "bradley.temple@gmail.com" with the password "supersecret"
    When I visit the log on page
    And I fill in "user_email" with "bradley.temple@gmail.com"
    And I fill in "user_password" with "supersecret"
    And click the button with the text "Sign in using our secure server"
    And I view the list of products
    And I click on the product costing $25
    And I click the "add_to_cart" button
    And I click on the shopping cart
    And I click the "Proceed to Checkout" link
    Then there should be the shipping option "$5.99 Standard USPS Parcel Post (3-5 Business Days)"
    And I view the list of products
    And I click on the product costing $11
    And I click the "add_to_cart" button
    And I click on the shopping cart
    And I click the "Proceed to Checkout" link
    Then there should be the shipping option "FREE Super Saver Shipping (3-5 Business Days)"