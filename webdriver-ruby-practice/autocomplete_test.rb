require 'selenium-webdriver'

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/autocomplete"

autocomplete = driver(id: "autocomplete")
autocomplete.send_keys("1555 park blvd, palo alto, ca, usa")

# Implicit => waiting for the dropdown/result to appear in seconds
# https://www.guru99.com/implicit-explicit-waits-selenium.html
driver.manage.timeouts.implicit.wait = 5

# Explicit => waits for a specific element/condition/action to appear/meets/happens on the page. NOT time based
# better option bc youre not waiting for any longer than you actually need to
wait = Selenium::WebDriver::Wait.new(timeout: 5)
wait.until { driver.find_element(class: 'pack-item').displayed?}

autocomplete_result = driver.find_element(class: 'pack-item')
autocomplete_result.click


