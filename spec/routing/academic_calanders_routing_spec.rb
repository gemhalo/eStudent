require "spec_helper"

describe AcademicCalandersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/academic_calanders" }.should route_to(:controller => "academic_calanders", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/academic_calanders/new" }.should route_to(:controller => "academic_calanders", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/academic_calanders/1" }.should route_to(:controller => "academic_calanders", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/academic_calanders/1/edit" }.should route_to(:controller => "academic_calanders", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/academic_calanders" }.should route_to(:controller => "academic_calanders", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/academic_calanders/1" }.should route_to(:controller => "academic_calanders", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/academic_calanders/1" }.should route_to(:controller => "academic_calanders", :action => "destroy", :id => "1")
    end

  end
end
