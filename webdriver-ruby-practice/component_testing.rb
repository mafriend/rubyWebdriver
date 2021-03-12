require 'selenium-webdriver'

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/datepicker"

# few different ways to automate a datepicker: either send keys with a date or actually select the date from the picker itself

#send keys option
datefield = driver.find_element(id: "datepicker")
# datefield.send_keys("10/18/2021")
# datefield.send_keys :return

#why cant i just send keys to hit enter? the date picker is over the original container and selenium doesnt like that so you have to use :return instead of sending keys

# Homework: actually USE and find the date with the datepicker
datefield.click()


datePicked = driver.find_element(css: '[input: data-date = "1618012800000"]')
datePicked.click()

#maybe it would be better to use the first example to find specific dates and the second example to find a date just in general