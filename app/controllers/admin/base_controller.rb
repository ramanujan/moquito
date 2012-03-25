class Admin::BaseController < ApplicationController
   
    def index
      @title=t("admin.base_controller.index.title")
    end 
     
end

