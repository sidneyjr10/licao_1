require "capybara/cucumber"
require "selenium-webdriver"
require "webdrivers"

Capybara.register_driver :selenium do |app|
  #Selenium::WebDriver::Chrome::Service.driver_path=  "C:/Users/T440P/Desktop/aula1/chromedriver.exe"
  #Selenium::WebDriver::Remote::Capabilities.chrome
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do
    Capybara.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize 
end