require "spec_helper"

describe AcademicYearsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/academic_years" }.should route_to(:controller => "academic_years", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/academic_years/new" }.should route_to(:controller => "academic_years", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/academic_years/1" }.should route_to(:controller => "academic_years", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/academic_years/1/edit" }.should route_to(:controller => "academic_years", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/academic_years" }.should route_to(:controller => "academic_years", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/academic_years/1" }.should route_to(:controller => "academic_years", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/academic_years/1" }.should route_to(:controller => "academic_years", :action => "destroy", :id => "1")
    end

  end
end
