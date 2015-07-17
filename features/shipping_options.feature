Feature: Shipping Options

  We have an array of shipping options available on Fake Amazon. The most basic is Standard Shipping, which ships via
  USPS parcel post, and is expected to be delivered in 3-5 Business Days. On orders over $35, we offer free super saver shipping.
  This is still a 3-5 day delivery, but we take care of the shipping cost.

  For Fake Amazon Prime Customers, we offer Free 2-Day shipping on any order regardless of how much it costs. We offer no-rush shipping which is also free, but ships more cheaply in exchange for a bonus of $1 digital goods credit. Finally we offer prime customers next-day shipping for $3.99 per item.

  Scenario: Only Standard Shipping for orders under $35
    Given I am logged in as a regular user
    And I have a cart with $34 worth of merchandise
    When I checkout
    Then I should only have the option for standard shipping

  Scenario: Only Standard Shipping for orders exactly $35
    Given I am logged in as a regular user
    And I have a cart with $35 worth of merchandise
    When I checkout
    Then I should only have the option for standard shipping

  Scenario: Standard and FREE Super-Saver Shipping on Orders over $35
    Given I am logged in as a regular user
    And I have a cart with $36 worth of merchandise
    When I checkout
    Then I should only have the option for standard shipping

  Scenario Outline: Shipping Options for Prime Customers
    Given I am logged in as a prime user
    And I have a cart with $<value> worth of merchandise
    When I checkout
    Then I should have the following shipping options:
      | Prime Two Day Shipping                                                     |  
      | Prime Next Day Delivery                                                    |  
      | Prime No Rush Shipping (5-7 Business Days). Get $1 Digital Product Credit! |  

    Examples:
      | value |  
      | $34   |  
      | $35   |  
      | $36   |  
