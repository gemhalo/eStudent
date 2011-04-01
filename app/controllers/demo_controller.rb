class DemoController < ApplicationController
  layout "application"
  def index
    render :inline =>
   "<%= netzke :some_simple_app %>",
     :layout => true
  end
end

