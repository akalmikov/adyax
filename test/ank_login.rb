require 'rubygems'
require 'selenium-webdriver'

class LogIn
	def wait_for(seconds=5)
  		Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
	end

    def initialize(driver, user, pass)
    @driver = driver
    @user   = 'sanders'
    @pass = 'q1w2e3r4'

    driver.get "http://webanketa.com"
	driver.find_element(:xpath, ".//*[@id='pgHeader']/div[2]/div[1]/div/div/a[1]").click
	driver.find_element(:id, "user.auth.login").send_keys @user
	driver.find_element(:id, "user.auth.pass").send_keys @pass
	driver.find_element(:xpath, ".//*[@id='pgHeader']/div[1]/form/button").click
	wait_for {driver.find_element(:xpath, ".//*[@id='pgHeader']/div[2]/div[4]/a[1]")} 
	end
end