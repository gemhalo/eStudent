require "spec_helper"

describe ClassYearsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/class_years" }.should route_to(:controller => "class_years", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/class_years/new" }.should route_to(:controller => "class_years", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/class_years/1" }.should route_to(:controller => "class_years", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/class_years/1/edit" }.should route_to(:controller => "class_years", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/class_years" }.should route_to(:controller => "class_years", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/class_years/1" }.should route_to(:controller => "class_years", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/class_years/1" }.should route_to(:controller => "class_years", :action => "destroy", :id => "1")
    end

  end
end
