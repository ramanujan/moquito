module ApplicationHelper
   
   BASE_TITLE=I18n.translate("brand")  
  
  def title
    @title ? (BASE_TITLE+" | "+@title) : BASE_TITLE 
  end

  def brief message
   
   message.length >= 180 ? (message[0..179]+"...") : message
   
  end 

   
end
