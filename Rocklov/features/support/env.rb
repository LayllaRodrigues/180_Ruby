require "capybara"
require "capybara/cucumber"
require 'webdrivers'


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

