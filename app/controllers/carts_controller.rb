class CartsController < ApplicationController

  def show
    
    @cart = curr_cart
    
    logger.info("_______________________________________INCLUDES___________________________________")
    
    @line_items = @cart.line_items.includes(:product).all    
  
    logger.info("___________________________________________________________________________________")
    
  end  


end
