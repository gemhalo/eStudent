require "spec_helper"

describe RoomsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/rooms" }.should route_to(:controller => "rooms", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/rooms/new" }.should route_to(:controller => "rooms", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/rooms/1" }.should route_to(:controller => "rooms", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/rooms/1/edit" }.should route_to(:controller => "rooms", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/rooms" }.should route_to(:controller => "rooms", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/rooms/1" }.should route_to(:controller => "rooms", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/rooms/1" }.should route_to(:controller => "rooms", :action => "destroy", :id => "1")
    end

  end
end
