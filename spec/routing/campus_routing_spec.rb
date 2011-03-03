require "spec_helper"

describe CampusController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/campus" }.should route_to(:controller => "campus", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/campus/new" }.should route_to(:controller => "campus", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/campus/1" }.should route_to(:controller => "campus", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/campus/1/edit" }.should route_to(:controller => "campus", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/campus" }.should route_to(:controller => "campus", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/campus/1" }.should route_to(:controller => "campus", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/campus/1" }.should route_to(:controller => "campus", :action => "destroy", :id => "1")
    end

  end
end
