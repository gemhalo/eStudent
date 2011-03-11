class WelcomeController < ApplicationController
  layout "instructor"
  def index
    render :inline =>
    "<%= netzke :main_app %>",
    :layout => true
  end

end

