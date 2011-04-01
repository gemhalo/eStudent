require "spec_helper"

describe AcademicCaledarsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/academic_caledars" }.should route_to(:controller => "academic_caledars", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/academic_caledars/new" }.should route_to(:controller => "academic_caledars", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/academic_caledars/1" }.should route_to(:controller => "academic_caledars", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/academic_caledars/1/edit" }.should route_to(:controller => "academic_caledars", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/academic_caledars" }.should route_to(:controller => "academic_caledars", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/academic_caledars/1" }.should route_to(:controller => "academic_caledars", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/academic_caledars/1" }.should route_to(:controller => "academic_caledars", :action => "destroy", :id => "1")
    end

  end
end
