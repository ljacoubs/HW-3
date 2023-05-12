class ApplicationController < ActionController::Base

  def index
    @name = ApplicationController.all
    @content = ApplicationController.all 
  end

  def new 
    @name = ApplicationController.new
    @content = ApplicationController.new 
  end
  


end
