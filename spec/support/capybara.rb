require 'capybara/rspec'
require 'capybara/poltergeist'
Capybara.register_driver :poltergeist do |app|
   Capybara::Poltergeist::Driver.new(app, js_errors: false, timeout: 5000)
end
Capybara.javascript_driver = :poltergeist