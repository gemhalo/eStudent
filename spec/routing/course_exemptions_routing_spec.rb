require "spec_helper"

describe CourseExemptionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/course_exemptions" }.should route_to(:controller => "course_exemptions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/course_exemptions/new" }.should route_to(:controller => "course_exemptions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/course_exemptions/1" }.should route_to(:controller => "course_exemptions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/course_exemptions/1/edit" }.should route_to(:controller => "course_exemptions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/course_exemptions" }.should route_to(:controller => "course_exemptions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/course_exemptions/1" }.should route_to(:controller => "course_exemptions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/course_exemptions/1" }.should route_to(:controller => "course_exemptions", :action => "destroy", :id => "1")
    end

  end
end
