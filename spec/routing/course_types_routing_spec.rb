require "spec_helper"

describe CourseTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/course_types" }.should route_to(:controller => "course_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/course_types/new" }.should route_to(:controller => "course_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/course_types/1" }.should route_to(:controller => "course_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/course_types/1/edit" }.should route_to(:controller => "course_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/course_types" }.should route_to(:controller => "course_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/course_types/1" }.should route_to(:controller => "course_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/course_types/1" }.should route_to(:controller => "course_types", :action => "destroy", :id => "1")
    end

  end
end
