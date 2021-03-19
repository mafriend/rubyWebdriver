require "selenium-webdriver"
require "rspec"
require "chromedriver-helper"

#Global Variable
$first_name = 'Tina'
$last_name = 'Cat'
$job_title = 'Researcher'
$date = '02/20/2024'
$success_alert = "The form was successfully submitted!"

#creating a method
def submit_form(driver)
  driver.find_element(id: 'first-name').send_keys($first_name)
  driver.find_element(id: 'last-name').send_keys($last_name)
  driver.find_element(id: 'job-title').send_keys($job_title)

  #radio button part of form
  driver.find_element(id: 'radio-button-2').click
  driver.find_element(id: 'checkbox-2').click

  #select menu (different than dropdown)
  driver.find_element(css: 'option[value="2"]').click
  # find the element by the option css selector of value and in the code itself is listed as "value 2"

  #datepicker
  driver.find_element(id: 'datepicker').send_keys($date)
  driver.find_element(id: 'datepicker').send_keys :return

  # submit form
  driver.find_element(css: '.btn.btn-lg.btn-primary').click
end

def get_banner_text(driver)
  #revisit waits? Explicit wait
  wait = Selenium::WebDriver::Wait.new(timeout:10)
  wait.until {driver.find_element(class: 'alert').displayed?}
  banner = driver.find_element(class: 'alert')
  banner_text = banner.text
end

#example of rspec core
describe "automating a form" do
  it "submits a form" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/form"
    submit_form(driver)
    #rspec expectation example (asserts)
    actual_banner_text = get_banner_text(driver)
    expect(actual_banner_text).to eql($success_alert)
    driver.quit
  end
end