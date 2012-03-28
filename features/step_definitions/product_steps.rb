Given /^there is a product named "([^"]*)"$/ do |product_title|
  @product = Factory(:product,:title=>product_title)  
end