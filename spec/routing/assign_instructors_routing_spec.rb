require "spec_helper"

describe AssignInstructorsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/assign_instructors" }.should route_to(:controller => "assign_instructors", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/assign_instructors/new" }.should route_to(:controller => "assign_instructors", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/assign_instructors/1" }.should route_to(:controller => "assign_instructors", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/assign_instructors/1/edit" }.should route_to(:controller => "assign_instructors", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/assign_instructors" }.should route_to(:controller => "assign_instructors", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/assign_instructors/1" }.should route_to(:controller => "assign_instructors", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/assign_instructors/1" }.should route_to(:controller => "assign_instructors", :action => "destroy", :id => "1")
    end

  end
end
