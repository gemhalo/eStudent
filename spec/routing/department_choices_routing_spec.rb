require "spec_helper"

describe DepartmentChoicesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/department_choices" }.should route_to(:controller => "department_choices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/department_choices/new" }.should route_to(:controller => "department_choices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/department_choices/1" }.should route_to(:controller => "department_choices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/department_choices/1/edit" }.should route_to(:controller => "department_choices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/department_choices" }.should route_to(:controller => "department_choices", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/department_choices/1" }.should route_to(:controller => "department_choices", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/department_choices/1" }.should route_to(:controller => "department_choices", :action => "destroy", :id => "1")
    end

  end
end
