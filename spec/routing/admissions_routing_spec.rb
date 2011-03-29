require "spec_helper"

describe AdmissionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admissions" }.should route_to(:controller => "admissions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admissions/new" }.should route_to(:controller => "admissions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admissions/1" }.should route_to(:controller => "admissions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admissions/1/edit" }.should route_to(:controller => "admissions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admissions" }.should route_to(:controller => "admissions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admissions/1" }.should route_to(:controller => "admissions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admissions/1" }.should route_to(:controller => "admissions", :action => "destroy", :id => "1")
    end

  end
end
