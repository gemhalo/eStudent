class WelcomeController < ApplicationController
  layout "application"
  def index
    render :inline =>
    "<%= netzke :main_app %>",
    :layout => true
  end
end

