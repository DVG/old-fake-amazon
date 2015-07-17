require 'capybara/poltergeist'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# Normally you'd want to be headless, 
Capybara.default_driver = ENV["DRIVER"].try(:to_sym) || :chrome
Capybara.javascript_driver = ENV["JS_DRIVER"].try(:to_sym) || :chrome