require "spec_helper"

describe SemestersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/semesters" }.should route_to(:controller => "semesters", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/semesters/new" }.should route_to(:controller => "semesters", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/semesters/1" }.should route_to(:controller => "semesters", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/semesters/1/edit" }.should route_to(:controller => "semesters", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/semesters" }.should route_to(:controller => "semesters", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/semesters/1" }.should route_to(:controller => "semesters", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/semesters/1" }.should route_to(:controller => "semesters", :action => "destroy", :id => "1")
    end

  end
end
