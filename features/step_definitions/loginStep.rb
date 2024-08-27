Given('this will pass') do
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
    binding.pry
    
  end
  
  When('I do an action') do
    
  end
  
  Then('some results should be there') do        
    
  end
  
  Given('this will fail') do
    
  end