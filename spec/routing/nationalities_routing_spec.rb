require "spec_helper"

describe NationalitiesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/nationalities" }.should route_to(:controller => "nationalities", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/nationalities/new" }.should route_to(:controller => "nationalities", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/nationalities/1" }.should route_to(:controller => "nationalities", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/nationalities/1/edit" }.should route_to(:controller => "nationalities", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/nationalities" }.should route_to(:controller => "nationalities", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/nationalities/1" }.should route_to(:controller => "nationalities", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/nationalities/1" }.should route_to(:controller => "nationalities", :action => "destroy", :id => "1")
    end

  end
end
