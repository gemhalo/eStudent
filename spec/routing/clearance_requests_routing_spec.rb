require "spec_helper"

describe ClearanceRequestsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/clearance_requests" }.should route_to(:controller => "clearance_requests", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/clearance_requests/new" }.should route_to(:controller => "clearance_requests", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/clearance_requests/1" }.should route_to(:controller => "clearance_requests", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/clearance_requests/1/edit" }.should route_to(:controller => "clearance_requests", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/clearance_requests" }.should route_to(:controller => "clearance_requests", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/clearance_requests/1" }.should route_to(:controller => "clearance_requests", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/clearance_requests/1" }.should route_to(:controller => "clearance_requests", :action => "destroy", :id => "1")
    end

  end
end
