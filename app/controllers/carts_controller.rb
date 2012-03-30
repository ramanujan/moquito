class CartsController < ApplicationController

  def show
    
    @cart = curr_cart
    @line_items = @cart.line_items.all    
  
  end  


end
