class LineItemsController < ApplicationController
  
  before_filter :current_cart
  before_filter :find_product
  
  
  def create
      
      @line_item = @cart.add_product(@product.id) 
      
      if @line_item.save 
        redirect_to cart_path # Accende l'azione show() del controller CartController  
      else
        
        flash[:block]=t("line_items.create.error")
        redirect_to  store_product(@product)
      end
      
      
  end

  private
  
  def current_cart
  
    @cart = curr_cart # From ApplicationController  
    
    if @cart.nil? 
      redirect_to root_path # N.B. DA GESTIRE MEGLIO LA SITUAZIONE D'ERRORE Exceptionl     
    end
  
  end

  def find_product
    
    @product=Product.find(params[:product_id])
    rescue
    flash[:block]=t("line_items.find")
    redirect_to store_path  
  end 


end
