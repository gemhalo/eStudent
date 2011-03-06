require "spec_helper"

describe InstructorsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/instructors" }.should route_to(:controller => "instructors", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/instructors/new" }.should route_to(:controller => "instructors", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/instructors/1" }.should route_to(:controller => "instructors", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/instructors/1/edit" }.should route_to(:controller => "instructors", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/instructors" }.should route_to(:controller => "instructors", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/instructors/1" }.should route_to(:controller => "instructors", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/instructors/1" }.should route_to(:controller => "instructors", :action => "destroy", :id => "1")
    end

  end
end
