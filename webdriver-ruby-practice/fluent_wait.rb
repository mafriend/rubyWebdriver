##  trying out Fluent Waits from selenium 4. its a better option than a sleep or a wait because it polls for whatever it is you are looking for. You set how often it polls and when the timeout should occur. Pretty neat, huh. This is my attempt to write a fluent wait in ruby when all the examples are in Java.

# # Explicit example: wait for an element to appear
# require 'selenium-webdriver'
# driver = Selenium::WebDriver.for :firefox
# wait = Selenium::WebDriver::Wait.new(:timeout => 10)
#
# def document_initialised(driver)
#   driver.execute_script('return initialised')
# end
#
# begin
#   driver.get 'file:///race_condition.html'
#   wait.until{document_initialised driver}
#   search_form = driver.find_element(:css,'p').text
#   "Hello from JavaScript!".eql? search_form
# ensure
#   driver.quit
# end
#
# # implicit example: wait for a s
# driver.get 'file:///race_condition.html'
#
# wait = Selenium::WebDriver::Wait.new(:timeout => 10)
# ele = wait.until { driver.find_element(css: 'p')}
# foo = ele.text
# assert_match foo, 'Hello from JavaScript'

# Fluent Wait - polls while waiting for event to appear then times out
require 'selenium-webdriver'

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://www.selenium.dev/documentation/en/grid/"

classTab = driver.find_element(css: [tab: 'tabEnd'])
# timeout to stop the polling, interval to poll, message to show when time out has occurred.
wait = Selenium::Webdriver::Wait.new(timeout => 10, interval => 5, message: "Time out")
wait.until classTab.visible?

