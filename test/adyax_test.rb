require 'rubygems'
require 'selenium-webdriver'
require './ank_login'
require './create'
require './change'

driver = Selenium::WebDriver.for :firefox

LogIn.new(driver, "sanders", "q1w2e3r4")

puts "new form"

NewForm.new(driver)

puts "changing form"

ChangeForm.new(driver)

driver.quit