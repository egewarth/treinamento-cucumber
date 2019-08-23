require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium/webdriver'
require 'rspec'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome # Com Navegador
  #config.default_driver = :selenium_chrome_headless # Sem navegador
  config.app_host = 'http://testepexnet.poupex.com.br'
  Capybara.default_max_wait_time = 15
end