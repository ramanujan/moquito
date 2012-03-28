class Admin::ProductsController < Admin::BaseController
  
 before_filter :find_product, :only=>[:show,:edit,:update]
  
  def show
    @title=t("admin.products.show.title",:title=>@product.title)
      
  end

  def index
    @title=t("admin.products.index.title")
    @products = Product.all 
  end

  def new
    @product = Product.new
    @title=t("admin.products.new.section_header")
  end
   
  
  
  def create
    @product = Product.new(params[:product])
    
    if @product.save
      
      flash[:block]=t("admin.products.create.success",
                       title:@product.title,
                       where:"#{ (view_context.link_to t('admin.products.create.where'),store_path)}",
                       another:t("admin.products.create.another",
                                 link:"#{view_context.link_to t('admin.products.create.another_link'),new_admin_product_path}")
                       ).html_safe                
      
      redirect_to [:admin,@product]                    
    
    else
      render :new # No flash messages, the errors are self-explanatory 
    end
               
  end 

  def edit
  
    @title=t("admin.products.edit.title")
      
    
  end 

  
  
  def update
  
    begin
      if @product.update_attributes(params[:product])
        flash[:block]=t("admin.products.update.success",
                       title:@product.title,
                       where:"#{ (view_context.link_to t('admin.products.create.where'),store_path)}"
                       ).html_safe  
        
        
        redirect_to [:admin,@product]
      else
        render :edit # Niente flash, stampo solo gli errori.
      end
    
    rescue => msg
      flash[:error]=t("admin.products.update.error",msg:msg)
      redirect_to  [:admin,@product]
    end
    
  end 



  def destroy
    
    product=Product.destroy(params[:id])
    flash[:block]=t("admin.products.destroy.success",title:product.title)
    redirect_to admin_products_path 
  end


  private
  
  def find_product
    begin
      @product = Product.find( params[:id] )
    rescue => msg
      flash[:error]=t("admin.products.find.error")
      redirect_to admin_products_path 
    end
  end
 

end
