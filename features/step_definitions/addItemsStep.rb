Given('login') do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "https://www.saucedemo.com/"
  
  @driver.find_element(:id, "user-name").send_keys("standard_user")
  @driver.find_element(:id, "password").send_keys("secret_sauce")
  @driver.find_element(:id, "login-button").click    
  
  @driver.find_element(:id, "add-to-cart-sauce-labs-backpack").click
  @driver.find_element(:id, "add-to-cart-sauce-labs-bike-light").click
  @driver.find_element(:id, "add-to-cart-sauce-labs-bolt-t-shirt").click
  @driver.find_element(:id, "add-to-cart-sauce-labs-fleece-jacket").click
  @driver.find_element(:id, "add-to-cart-test.allthethings()-t-shirt-(red)").click
  end
  
  When('select the first item') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('this one is added to the cart') do    
    pending # Write code here that turns the phrase above into concrete actions
  end