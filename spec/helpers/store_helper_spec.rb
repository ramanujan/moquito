require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the StoreHelper. For example:
#
# describe StoreHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end

describe StoreHelper do
  
  describe "ProductsIterator" do
    
    before do
       
       products = %w(uno due tre quattro cinque)
       
       @iterator = StoreHelper::ProductsIterator.new(products)
    
    end
    
    it "should has row-grouped elements " do
      
     
      
      @iterator.grouped_products["row_0"].should eql( %w(uno due tre) )
      
      @iterator.grouped_products["row_1"].should eql( %w(quattro cinque) )
    
    end
    
    it "should return the next element" do
      @iterator.next.should eql( %w(uno due tre) )
      @iterator.has_next?.should be_true
      @iterator.next.should eql( %w(quattro cinque) )
      @iterator.has_next?.should_not be_true
    end
    
    
  end  
  
  
end

