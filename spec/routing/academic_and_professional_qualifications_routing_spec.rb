require "spec_helper"

describe AcademicAndProfessionalQualificationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/academic_and_professional_qualifications" }.should route_to(:controller => "academic_and_professional_qualifications", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/academic_and_professional_qualifications/new" }.should route_to(:controller => "academic_and_professional_qualifications", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/academic_and_professional_qualifications/1" }.should route_to(:controller => "academic_and_professional_qualifications", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/academic_and_professional_qualifications/1/edit" }.should route_to(:controller => "academic_and_professional_qualifications", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/academic_and_professional_qualifications" }.should route_to(:controller => "academic_and_professional_qualifications", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/academic_and_professional_qualifications/1" }.should route_to(:controller => "academic_and_professional_qualifications", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/academic_and_professional_qualifications/1" }.should route_to(:controller => "academic_and_professional_qualifications", :action => "destroy", :id => "1")
    end

  end
end
