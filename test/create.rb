require 'rubygems'
require 'selenium-webdriver'
require './ank_login'

class NewForm
	def wait_for(seconds=5)
	   Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
	end

	def initialize(driver)
		@driver = driver
		
		driver.find_element(:xpath, ".//*[@id='pgHeader']/div[2]/div[4]/a[1]").click
		driver.find_element(:xpath, ".//*[@id='designer']/div/div[2]/table/tbody[1]/tr[1]/td[2]/input").send_keys("test" + DateTime.now.to_s)
		driver.find_element(:xpath, ".//*[@id='designer']/div/div[2]/table/tbody[1]/tr[2]/td[2]/select/option[3]").click
		driver.find_element(:xpath, ".//*[@id='designer']/div/div[2]/table/tbody[1]/tr[4]/td[2]/label[3]/input").click
		driver.find_element(:xpath, ".//*[@id='respUniqType']/td[2]/label[3]/input").click
		driver.find_element(:xpath, ".//*[@id='designer']/div/div[2]/table/tbody[3]/tr/td[2]/button").click
	end
end