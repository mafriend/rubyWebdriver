require 'selenium-webdriver'

driver = Selenium::WebDriver.for .chrome
driver.navigate.to "https://formy-project.herokuapp.com/radiobutton"

radio_button_1 = driver.find_element(id: 'radio-button-1')
radio_button_1.click

# Since there are shared ids, we needed to find some other way to locate this radio button
# There was a unique value - option2
# unless it is a class/id, we need to use css: 'input[selector=thingToSelect]'
radio_button_2 = driver.find_element(css: 'input[value="option2"]')
radio_button_2.click

# xpath - not recommended but sometimes necessary. i hate it.
# cool trick though! you can right on the element in the chrome inspector, click copy and grab the xpath that way!
radio_button_3 = driver.find_element(xpath: '/html/body/div/div[3]/input')
radio_button_3.click

# checkboxes work the same way as radio buttons.
# Homework - try to write a test for checkboxes
# Checkbox_test.rb