Feature: Creating Products

 Come utente (venditore) desidero
 poter creare facilmente i prodotti da vendere nel
 mio negozio

Scenario: Create a product

 Given I am on the homepage
 And I follow "Go To Store Admin"
 And I follow "Products"
 And I follow "Add New Product"
 And I fill in "Product title" with "Cucumbers"
 And I fill in "Describe your product" with "Deliciuos vegetable used to make Tzazichi sauce"
 And I fill in "Selling price" with "1.20"
 When I press "Create Product"
 Then I should see "Cucumbers was successfully created!" 
 When I follow "your store"
 Then I should see "Cucumbers" within "h1"
 And I should see "1.20" within ".price"
