module ApplicationHelper
   
   BASE_TITLE=I18n.translate("brand")  
  
  def title
    @title ? (BASE_TITLE+" | "+@title) : BASE_TITLE 
  end

 

end
