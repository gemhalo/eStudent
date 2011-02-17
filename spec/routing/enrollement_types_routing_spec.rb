require "spec_helper"

describe EnrollementTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/enrollement_types" }.should route_to(:controller => "enrollement_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/enrollement_types/new" }.should route_to(:controller => "enrollement_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/enrollement_types/1" }.should route_to(:controller => "enrollement_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/enrollement_types/1/edit" }.should route_to(:controller => "enrollement_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/enrollement_types" }.should route_to(:controller => "enrollement_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/enrollement_types/1" }.should route_to(:controller => "enrollement_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/enrollement_types/1" }.should route_to(:controller => "enrollement_types", :action => "destroy", :id => "1")
    end

  end
end
