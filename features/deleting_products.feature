Feature: Deleting Products
 
 Come utente (venditore) desidero
 poter eliminare facilmente i prodotti. Voglio poter 
 accedere ad uno specifico prodotto e quindi scegliere di
 eliminarlo premendo semplicemente un pulsante.
 
Scenario: Delete product

Given there is a product named "Magic Pen"
And I am on the homepage
And I follow "Go To Store Admin"
And I follow "Products"
And I follow "Magic Pen"
When I follow "Delete Product"
Then I should see "Magic Pen was successfully deleted!"
And I should not see "Magic Pen" within "a"
