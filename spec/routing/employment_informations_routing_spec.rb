require "spec_helper"

describe EmploymentInformationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/employment_informations" }.should route_to(:controller => "employment_informations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/employment_informations/new" }.should route_to(:controller => "employment_informations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/employment_informations/1" }.should route_to(:controller => "employment_informations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/employment_informations/1/edit" }.should route_to(:controller => "employment_informations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/employment_informations" }.should route_to(:controller => "employment_informations", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/employment_informations/1" }.should route_to(:controller => "employment_informations", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/employment_informations/1" }.should route_to(:controller => "employment_informations", :action => "destroy", :id => "1")
    end

  end
end
