require "spec_helper"

describe CourseAssignmentsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/course_assignments" }.should route_to(:controller => "course_assignments", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/course_assignments/new" }.should route_to(:controller => "course_assignments", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/course_assignments/1" }.should route_to(:controller => "course_assignments", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/course_assignments/1/edit" }.should route_to(:controller => "course_assignments", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/course_assignments" }.should route_to(:controller => "course_assignments", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/course_assignments/1" }.should route_to(:controller => "course_assignments", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/course_assignments/1" }.should route_to(:controller => "course_assignments", :action => "destroy", :id => "1")
    end

  end
end
