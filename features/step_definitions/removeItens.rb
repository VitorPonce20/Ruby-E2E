Given('access itens main page') do
  @driver.find_element(:id, "shopping_cart_container").click    
  @driver.find_element(:id, "remove-sauce-labs-backpack").click
  
  end
  
  When('I select all itens for remove') do    
    @driver.find_element(:id, "remove-sauce-labs-bike-light").click
    @driver.find_element(:id, "remove-sauce-labs-bolt-t-shirt").click
   
  end
  
  Then('remove all itens') do
    @driver.find_element(:id, "remove-sauce-labs-fleece-jacket").click
   
  end
  
  Then('go back home page') do
    @driver.find_element(:id, "remove-test.allthethings()-t-shirt-(red)").click
  end