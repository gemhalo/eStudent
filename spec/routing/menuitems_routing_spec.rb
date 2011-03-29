require "spec_helper"

describe MenuitemsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/menuitems" }.should route_to(:controller => "menuitems", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/menuitems/new" }.should route_to(:controller => "menuitems", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/menuitems/1" }.should route_to(:controller => "menuitems", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/menuitems/1/edit" }.should route_to(:controller => "menuitems", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/menuitems" }.should route_to(:controller => "menuitems", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/menuitems/1" }.should route_to(:controller => "menuitems", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/menuitems/1" }.should route_to(:controller => "menuitems", :action => "destroy", :id => "1")
    end

  end
end
