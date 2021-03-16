require "selenium_webdriver"

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/dropdown"

dropdown_button = driver.find_element(id: "dropdownMenuButton")
dropdown_button.click()

autocomplete_selection = driver.find_element(id: "autocomplete")
autocomplete_selection.click()