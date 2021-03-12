require 'selenium-webdriver'

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/datepicker"

# few different ways to automate a datepicker: either send keys with a date or actually select the date from the picker itself

#send keys option
datefeild = driver.find_element(id: "datepicker")
datefeild.send_keys("10/18/2021")
datefeild.send_keys :return

#why cant i just send keys to hit enter? the date picker is over the original container and selenium doesnt like that so you have to use :return instead of sending keys

# Homework: actually USE the date picker