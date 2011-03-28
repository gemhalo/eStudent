require "spec_helper"

describe AdmissionTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admission_types" }.should route_to(:controller => "admission_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admission_types/new" }.should route_to(:controller => "admission_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admission_types/1" }.should route_to(:controller => "admission_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admission_types/1/edit" }.should route_to(:controller => "admission_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admission_types" }.should route_to(:controller => "admission_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admission_types/1" }.should route_to(:controller => "admission_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admission_types/1" }.should route_to(:controller => "admission_types", :action => "destroy", :id => "1")
    end

  end
end
