Feature: Editing Products
 
 Come utente (venditore) desidero
 poter aggiornare facilmente i prodotti da vendere nel
 mio negozio. Voglio poter accedere ad una lista di prodotti
 e quindi scegliere di editarne uno in particolare, e quindi di
 aggiornarlo.
 
Background:
 Given there is a product named "Magic pen"
 And I am on the homepage 
 And I follow "HOME"
 Then I should see "Magic pen"
 When I follow "Go To Store Admin"
 And I follow "Products"
 And I follow "Magic pen"
 And I follow "Edit Product"

Scenario: Edit a product 
 Then I should see "Edit your product"
 And I should see "Magic pen"

Scenario: Update a product
 
 And I fill in "Product title" with "Magikuta pencil"
 When I press "Update Product"
 Then I should see "Magikuta pencil was successfully updated!"
 When I follow "your store"
 Then I should see "Magikuta pencil" within "div.heading_small"
 And I should not see "Magic pen" 
 
 
 

