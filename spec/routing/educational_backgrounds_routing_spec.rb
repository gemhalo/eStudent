require "spec_helper"

describe EducationalBackgroundsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/educational_backgrounds" }.should route_to(:controller => "educational_backgrounds", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/educational_backgrounds/new" }.should route_to(:controller => "educational_backgrounds", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/educational_backgrounds/1" }.should route_to(:controller => "educational_backgrounds", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/educational_backgrounds/1/edit" }.should route_to(:controller => "educational_backgrounds", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/educational_backgrounds" }.should route_to(:controller => "educational_backgrounds", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/educational_backgrounds/1" }.should route_to(:controller => "educational_backgrounds", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/educational_backgrounds/1" }.should route_to(:controller => "educational_backgrounds", :action => "destroy", :id => "1")
    end

  end
end
