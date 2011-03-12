require "spec_helper"

describe EnrollmentModeTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/enrollment_mode_types" }.should route_to(:controller => "enrollment_mode_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/enrollment_mode_types/new" }.should route_to(:controller => "enrollment_mode_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/enrollment_mode_types/1" }.should route_to(:controller => "enrollment_mode_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/enrollment_mode_types/1/edit" }.should route_to(:controller => "enrollment_mode_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/enrollment_mode_types" }.should route_to(:controller => "enrollment_mode_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/enrollment_mode_types/1" }.should route_to(:controller => "enrollment_mode_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/enrollment_mode_types/1" }.should route_to(:controller => "enrollment_mode_types", :action => "destroy", :id => "1")
    end

  end
end
