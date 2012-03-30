Feature: Adding products to cart

Come utente (buyer) voglio essere in grado di
aggiungere un prodotto alla borsa della spesa, 
in maniera intuitiva. Voglio poter accedere ai dettagli 
su di un prodotto e quindi scegliere di aggiungere il prodotto
al carrello.

Scenario: Add a product to cart

 Given there is a product named "Cucumbers"
 And I am on the "store main page" 
 And I follow "Cucumbers"
 When I follow "ADD TO CART"
 Then I should see "Shopping bag" within "h1"
 And I should see "Cucumbers"
 And I should see "Save Changes"
 And I should see "Save & Checkout"
