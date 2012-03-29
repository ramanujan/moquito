class StoreController < ApplicationController

  def index
    
    @title=t("store.index.title")  
    @products = Product.all
  
  end

  def catalog
  
  
  end

  def show
   find_product
   @title=t("store.show.title")
   p "PRICE==============>#{@product.price}"   
  end
  
  
  
  private
  
  def find_product
   
    begin
      @product = Product.find( params[:id] )
    rescue => msg
      flash[:block]=t("admin.products.find")
      redirect_to store_path 
    end
  
  end


end
