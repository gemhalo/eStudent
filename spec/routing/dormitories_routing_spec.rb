require "spec_helper"

describe DormitoriesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/dormitories" }.should route_to(:controller => "dormitories", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/dormitories/new" }.should route_to(:controller => "dormitories", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/dormitories/1" }.should route_to(:controller => "dormitories", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/dormitories/1/edit" }.should route_to(:controller => "dormitories", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/dormitories" }.should route_to(:controller => "dormitories", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/dormitories/1" }.should route_to(:controller => "dormitories", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/dormitories/1" }.should route_to(:controller => "dormitories", :action => "destroy", :id => "1")
    end

  end
end
