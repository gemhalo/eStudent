require "spec_helper"

describe CollegesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/colleges" }.should route_to(:controller => "colleges", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/colleges/new" }.should route_to(:controller => "colleges", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/colleges/1" }.should route_to(:controller => "colleges", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/colleges/1/edit" }.should route_to(:controller => "colleges", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/colleges" }.should route_to(:controller => "colleges", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/colleges/1" }.should route_to(:controller => "colleges", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/colleges/1" }.should route_to(:controller => "colleges", :action => "destroy", :id => "1")
    end

  end
end
