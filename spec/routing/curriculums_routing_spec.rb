require "spec_helper"

describe CurriculumsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/curriculums" }.should route_to(:controller => "curriculums", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/curriculums/new" }.should route_to(:controller => "curriculums", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/curriculums/1" }.should route_to(:controller => "curriculums", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/curriculums/1/edit" }.should route_to(:controller => "curriculums", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/curriculums" }.should route_to(:controller => "curriculums", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/curriculums/1" }.should route_to(:controller => "curriculums", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/curriculums/1" }.should route_to(:controller => "curriculums", :action => "destroy", :id => "1")
    end

  end
end
