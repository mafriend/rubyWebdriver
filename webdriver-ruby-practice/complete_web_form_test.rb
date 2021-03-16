require "selenium_webdriver"

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/form"

driver.find_element(id: 'first-name').send_keys('Tina')
driver.find_element(id: 'last-name').send_keys('Cat')
driver.find_element(id: 'job-title').send_keys('Researcher')

#radio button part of form
driver.find_element(id: 'radio-button-2').click
driver.find_element(id: 'checkbox-2').click

#select menu (different than dropdown)
driver.find_element(css: 'option[value="2"]').click
# find the element by the option css selector of value and in the code itself is listed as "value 2"

#datepicker
driver.find_element(id: 'datepicker').send_keys('02/20/2024')
driver.find_element(id: 'datepicker').send_keys :return

# submit form
driver.find_element(css: 'btn.btn-l.btn-primary').click
driver.quit