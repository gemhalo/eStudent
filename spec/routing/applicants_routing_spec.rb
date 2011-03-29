require "spec_helper"

describe ApplicantsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/applicants" }.should route_to(:controller => "applicants", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/applicants/new" }.should route_to(:controller => "applicants", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/applicants/1" }.should route_to(:controller => "applicants", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/applicants/1/edit" }.should route_to(:controller => "applicants", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/applicants" }.should route_to(:controller => "applicants", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/applicants/1" }.should route_to(:controller => "applicants", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/applicants/1" }.should route_to(:controller => "applicants", :action => "destroy", :id => "1")
    end

  end
end
