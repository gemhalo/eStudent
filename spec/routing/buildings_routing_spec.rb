require "spec_helper"

describe BuildingsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/buildings" }.should route_to(:controller => "buildings", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/buildings/new" }.should route_to(:controller => "buildings", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/buildings/1" }.should route_to(:controller => "buildings", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/buildings/1/edit" }.should route_to(:controller => "buildings", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/buildings" }.should route_to(:controller => "buildings", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/buildings/1" }.should route_to(:controller => "buildings", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/buildings/1" }.should route_to(:controller => "buildings", :action => "destroy", :id => "1")
    end

  end
end
