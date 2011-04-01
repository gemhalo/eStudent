require "spec_helper"

describe OfferedCoursesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/offered_courses" }.should route_to(:controller => "offered_courses", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/offered_courses/new" }.should route_to(:controller => "offered_courses", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/offered_courses/1" }.should route_to(:controller => "offered_courses", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/offered_courses/1/edit" }.should route_to(:controller => "offered_courses", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/offered_courses" }.should route_to(:controller => "offered_courses", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/offered_courses/1" }.should route_to(:controller => "offered_courses", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/offered_courses/1" }.should route_to(:controller => "offered_courses", :action => "destroy", :id => "1")
    end

  end
end
