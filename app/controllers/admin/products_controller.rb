class Admin::ProductsController < Admin::BaseController
  
  before_filter :find_product, :only=>[:show]
  
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
                   title:@product.title)
      
      redirect_to [:admin,@product]                    
    
    else
      render :new # No flash messages, the errors are self-explanatory 
    end
               
  end 

  private
  
  def find_product
    begin
      @product = Product.find(params[:id])
    rescue
      flash[:block]=t("admin.products.find.error")
      redirect_to admin_products 
    end
  end
 

end
