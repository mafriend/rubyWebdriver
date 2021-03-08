require "selenium-webdriver"

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/dragdrop"

image = driver.find_element(id: "image")
box = driver.find_element(id: 'box')

# how to use dragon drop functionality
# https://www.selenium.dev/selenium/docs/api/rb/Selenium/WebDriver/PointerActions.html#drag_and_drop-instance_method
# driver.action.drag_and_drop(thing to drag, thing to be dragged onto).perform

driver.action.drag_and_drop(image,box).perform
