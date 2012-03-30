# Qui mettiamo delle funzionalità che desidero sia nei controllori che nelle view.

module UbiquitousHelper
  
  def curr_cart
    cart=Cart.find( session[:cart_id] )
    rescue
      cart = Cart.create 
      session[:cart_id]=cart
      cart # Nota che se, per qualche motivo eccezionale, cart non viene creato cart è nil
  end
end
  