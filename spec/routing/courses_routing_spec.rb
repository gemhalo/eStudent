require "spec_helper"

describe CoursesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/courses" }.should route_to(:controller => "courses", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/courses/new" }.should route_to(:controller => "courses", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/courses/1" }.should route_to(:controller => "courses", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/courses/1/edit" }.should route_to(:controller => "courses", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/courses" }.should route_to(:controller => "courses", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/courses/1" }.should route_to(:controller => "courses", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/courses/1" }.should route_to(:controller => "courses", :action => "destroy", :id => "1")
    end

  end
end
