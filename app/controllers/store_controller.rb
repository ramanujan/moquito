class StoreController < ApplicationController

  def index
    
    @title=t("store.index.title")  
    @products = Product.all
  
  end

  def catalog
  
  
  end


end
