require "spec_helper"

describe EthnicitiesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/ethnicities" }.should route_to(:controller => "ethnicities", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/ethnicities/new" }.should route_to(:controller => "ethnicities", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/ethnicities/1" }.should route_to(:controller => "ethnicities", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/ethnicities/1/edit" }.should route_to(:controller => "ethnicities", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/ethnicities" }.should route_to(:controller => "ethnicities", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/ethnicities/1" }.should route_to(:controller => "ethnicities", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/ethnicities/1" }.should route_to(:controller => "ethnicities", :action => "destroy", :id => "1")
    end

  end
end
