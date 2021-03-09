require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/checkbox"

# find by id
checkbox_1 = driver.find_element(id: 'checkbox-1')
checkbox_1.click

# find by css selector
checkbox_2 = driver.find_element(css: 'input[value="checkbox-2"]')
checkbox_2.click

# find by xpath
checkbox_3 = driver.find_element(xpath: "/html/body/div/div[3]/div/div/input")
checkbox_3.click

# i did it!
