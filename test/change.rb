require 'rubygems'
require 'selenium-webdriver'

class ChangeForm
	def wait_for(seconds=5)
	   Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
	end

	def initialize(driver)
		@driver = driver

		driver.find_element(:xpath, ".//*[@id='pgHeader']/div[2]/div[3]/a/img").click
		driver.find_element(:xpath, ".//*[@id='pgHeader']/div[2]/div[4]/a[2]").click
		driver.find_element(:xpath, ".//*[@id='formaction']/table/tbody/tr[2]/td[3]/a").click
		driver.find_element(:xpath, ".//*[@id='pgContainer']/div[3]/div[1]/div[2]/p[2]/a").click
		driver.find_element(:xpath, ".//*[@id='lastElHolder']/div/p/a").click
		driver.find_element(:xpath, ".//*[@id='floatToolbar']/div/form/table/tbody/tr/td[1]/a[3]").click
		driver.find_element(:xpath, ".//*[@id='submit_constructor_button']").click
	end
end