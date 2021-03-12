require "selenium-webdriver"

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/dropdown"

