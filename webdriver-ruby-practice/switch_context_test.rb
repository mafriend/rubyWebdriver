require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/switch-window"

new_tab_button = driver.find_element(id: "new-tab-button")
new_tab_button.click

# Will focus on a new tab. The tabs are the array accepted by window handles. 1 is the first tab available.
# The line below reads driver will focus on the first tab in the browser window

driver.switch_to.window(driver.window_handles[1])

# Since we are on the new tab, we need to go back to the former tab, so 0 in the array.
driver.switch_to.window(driver.window_handles[0])

alert_button = driver.find_element(id: "alert-button")
alert_button.click
# The line below will focus on the alert box and accept the alert
driver.switch_to.alert.accept