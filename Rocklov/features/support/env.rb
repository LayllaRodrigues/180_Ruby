require "capybara"
require "capybara/cucumber"
require "webdrivers"
require "faker"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

