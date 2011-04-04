class MainAppController < ApplicationController
  layout "main_application"
  def index
    render :inline => "<%= netzke :main_app %>", :layout => true
  end

end

