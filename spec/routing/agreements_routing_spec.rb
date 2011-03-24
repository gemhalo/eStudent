require "spec_helper"

describe AgreementsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/agreements" }.should route_to(:controller => "agreements", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/agreements/new" }.should route_to(:controller => "agreements", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/agreements/1" }.should route_to(:controller => "agreements", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/agreements/1/edit" }.should route_to(:controller => "agreements", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/agreements" }.should route_to(:controller => "agreements", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/agreements/1" }.should route_to(:controller => "agreements", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/agreements/1" }.should route_to(:controller => "agreements", :action => "destroy", :id => "1")
    end

  end
end
