require "spec_helper"

describe FamilyBackgroundsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/family_backgrounds" }.should route_to(:controller => "family_backgrounds", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/family_backgrounds/new" }.should route_to(:controller => "family_backgrounds", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/family_backgrounds/1" }.should route_to(:controller => "family_backgrounds", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/family_backgrounds/1/edit" }.should route_to(:controller => "family_backgrounds", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/family_backgrounds" }.should route_to(:controller => "family_backgrounds", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/family_backgrounds/1" }.should route_to(:controller => "family_backgrounds", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/family_backgrounds/1" }.should route_to(:controller => "family_backgrounds", :action => "destroy", :id => "1")
    end

  end
end
