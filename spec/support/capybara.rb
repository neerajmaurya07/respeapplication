
Capybara.asset_host = 'http://localhost:3000'
 # Capybara.default_driver = :selenium
# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(
#     app,
#     browser: :firefox,
#     desired_capabilities: Selenium::WebDriver::Remote::Capabilities.firefox(marionette: false)
#   )
# end

Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
end