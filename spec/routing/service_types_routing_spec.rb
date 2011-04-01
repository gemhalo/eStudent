require "spec_helper"

describe ServiceTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/service_types" }.should route_to(:controller => "service_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/service_types/new" }.should route_to(:controller => "service_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/service_types/1" }.should route_to(:controller => "service_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/service_types/1/edit" }.should route_to(:controller => "service_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/service_types" }.should route_to(:controller => "service_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/service_types/1" }.should route_to(:controller => "service_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/service_types/1" }.should route_to(:controller => "service_types", :action => "destroy", :id => "1")
    end

  end
end
