Given('this will pass') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get "google.com"
    @driver.find_element(:id, "input")
    
  end
  
  When('I do an action') do
    
  end
  
  Then('some results should be there') do        
    
  end
  
  Given('this will fail') do
    
  end