require "spec_helper"

describe CurriculumCoursesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/curriculum_courses" }.should route_to(:controller => "curriculum_courses", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/curriculum_courses/new" }.should route_to(:controller => "curriculum_courses", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/curriculum_courses/1" }.should route_to(:controller => "curriculum_courses", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/curriculum_courses/1/edit" }.should route_to(:controller => "curriculum_courses", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/curriculum_courses" }.should route_to(:controller => "curriculum_courses", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/curriculum_courses/1" }.should route_to(:controller => "curriculum_courses", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/curriculum_courses/1" }.should route_to(:controller => "curriculum_courses", :action => "destroy", :id => "1")
    end

  end
end
