require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/scroll"

name = driver.find_element(id: 'name')
# will this always scroll down?
# moves to where ever the element is, regardless of where it is on the page. usually you will go down since pages load from the top
driver.action.move_to(name).send_keys('Friendly Friend')

date = driver.find_element(id: 'date')
date.send_keys('02/18/2024')
