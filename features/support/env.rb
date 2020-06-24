require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'pry'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec/expectations'
require  'fileutils'
require  'faker'
require 'cpf_utils'
require_relative 'helpers.rb'

World(Helpers)


BROWSER = ENV['BROWSER']

DATA = YAML.load_file("./util/users_test.yml")
MESSAGE = YAML.load_file("./util/messages_text.yml")


Faker::Config.locale = 'pt-BR'

Capybara.register_driver :selenium do |app|
 
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app,:browser => :chrome,
            :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                'chromeOptions' => {
                    'args' => [ "--ignore-certificate-errors" ]}
            )
        )
    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, marionette: true)
    end
end


Capybara.configure do |config|
    config.default_driver = :selenium
end

Capybara.default_max_wait_time = 30