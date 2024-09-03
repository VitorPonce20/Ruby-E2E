    Feature: Remove Itens
    Rule: Access itens page, select all itens then romeve all
    
    @removeItens
    Example: Remove itens
    
    Scenario: 
      Given access itens main page 
      When I select all itens for remove 
      Then remove all itens
      And go back home page