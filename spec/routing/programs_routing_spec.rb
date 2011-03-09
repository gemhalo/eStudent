require "spec_helper"

describe ProgramsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/programs" }.should route_to(:controller => "programs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/programs/new" }.should route_to(:controller => "programs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/programs/1" }.should route_to(:controller => "programs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/programs/1/edit" }.should route_to(:controller => "programs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/programs" }.should route_to(:controller => "programs", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/programs/1" }.should route_to(:controller => "programs", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/programs/1" }.should route_to(:controller => "programs", :action => "destroy", :id => "1")
    end

  end
end
