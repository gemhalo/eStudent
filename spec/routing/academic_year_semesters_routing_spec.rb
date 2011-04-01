require "spec_helper"

describe AcademicYearSemestersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/academic_year_semesters" }.should route_to(:controller => "academic_year_semesters", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/academic_year_semesters/new" }.should route_to(:controller => "academic_year_semesters", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/academic_year_semesters/1" }.should route_to(:controller => "academic_year_semesters", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/academic_year_semesters/1/edit" }.should route_to(:controller => "academic_year_semesters", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/academic_year_semesters" }.should route_to(:controller => "academic_year_semesters", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/academic_year_semesters/1" }.should route_to(:controller => "academic_year_semesters", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/academic_year_semesters/1" }.should route_to(:controller => "academic_year_semesters", :action => "destroy", :id => "1")
    end

  end
end
