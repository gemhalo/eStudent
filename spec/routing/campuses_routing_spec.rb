require "spec_helper"

describe CampusesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/campuses" }.should route_to(:controller => "campuses", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/campuses/new" }.should route_to(:controller => "campuses", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/campuses/1" }.should route_to(:controller => "campuses", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/campuses/1/edit" }.should route_to(:controller => "campuses", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/campuses" }.should route_to(:controller => "campuses", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/campuses/1" }.should route_to(:controller => "campuses", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/campuses/1" }.should route_to(:controller => "campuses", :action => "destroy", :id => "1")
    end

  end
end
