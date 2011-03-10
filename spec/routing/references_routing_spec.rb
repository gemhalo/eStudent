require "spec_helper"

describe ReferencesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/references" }.should route_to(:controller => "references", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/references/new" }.should route_to(:controller => "references", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/references/1" }.should route_to(:controller => "references", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/references/1/edit" }.should route_to(:controller => "references", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/references" }.should route_to(:controller => "references", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/references/1" }.should route_to(:controller => "references", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/references/1" }.should route_to(:controller => "references", :action => "destroy", :id => "1")
    end

  end
end
