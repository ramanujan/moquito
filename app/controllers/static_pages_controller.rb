class StaticPagesController < ApplicationController
  def home
    @title=t("Home")
  end

  def about
    @title=t("About")
  end
  
  def heroku_db_reset
    @output = `rake db:reset`
  end

  def heroku_db_migrate
    @output = `rake db:migrate`
  end

end
