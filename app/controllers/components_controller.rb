class ComponentsController < ApplicationController
  def index
    render :inline => "<%= netzke :e_student_app, :class_name => 'EStudentApp' %>", :layout => true
    #component_name = params[:component].gsub("::", "_").underscore
    #render :inline => "<% title '#{params[:component]}', false %><%= netzke :#{component_name}, :class_name => '#{params[:component]}' %>", :layout => true
  end
end

