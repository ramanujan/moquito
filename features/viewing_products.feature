Feature: Viewing Products
 
  Come utente (buyer) desidero
  poter visualizzare già nella homepage, una lista di prodotti.
  Si tratta in pratica della lista taggata dall'amministratore come
  'prodotti front-page' (ad sempio una lista di elementi che l'utente 
  venditore desidera avere in primo piano). Da questa lista l'utente (buyer) 
  deve essere in grado di accedere ai dettagli di ogni singolo prodotto. 
 

Background:
  
  Given there is a product named "Cucumbers"
  And I am on the "store main page" 
 
Scenario: Show product at store-homepage
  
  Then I should see "Cucumbers" within "a"

Scenario: Show product's details
  
  When I follow "Cucumbers"
  Then I should see "Cucumbers" within "h1"
  
  And I should see "1.50" within "h1.product_price_show"
 
  And I should see "A deliciuos vegetable, used among other things,for Tzazichi sauce"
