require "spec_helper"

describe RelevantPublicationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/relevant_publications" }.should route_to(:controller => "relevant_publications", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/relevant_publications/new" }.should route_to(:controller => "relevant_publications", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/relevant_publications/1" }.should route_to(:controller => "relevant_publications", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/relevant_publications/1/edit" }.should route_to(:controller => "relevant_publications", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/relevant_publications" }.should route_to(:controller => "relevant_publications", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/relevant_publications/1" }.should route_to(:controller => "relevant_publications", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/relevant_publications/1" }.should route_to(:controller => "relevant_publications", :action => "destroy", :id => "1")
    end

  end
end
