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
    
    
  end
  
  When('I do an action') do    
    @driver.find_element(:id, "shopping_cart_container").click    
    @driver.find_element(:id, "remove-sauce-labs-backpack").click
    @driver.find_element(:id, "remove-sauce-labs-bike-light").click
    @driver.find_element(:id, "remove-sauce-labs-bolt-t-shirt").click
    @driver.find_element(:id, "remove-sauce-labs-fleece-jacket").click
    @driver.find_element(:id, "remove-test.allthethings()-t-shirt-(red)").click
  end
  
  Then('some results should be there') do        
    @driver.find_element(:id, "continue-shopping").click
    @driver.find_element(:id, "checkout").click
  end
  
  Given('this will fail') do
    @driver.find_element(:id, "first-name").click    
    @driver.find_element(:id, "last-name").click    
    @driver.find_element(:id, "postal-code").click*
    9
  end