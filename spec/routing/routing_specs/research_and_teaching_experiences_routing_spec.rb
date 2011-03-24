require "spec_helper"

describe ResearchAndTeachingExperiencesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/research_and_teaching_experiences" }.should route_to(:controller => "research_and_teaching_experiences", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/research_and_teaching_experiences/new" }.should route_to(:controller => "research_and_teaching_experiences", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/research_and_teaching_experiences/1" }.should route_to(:controller => "research_and_teaching_experiences", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/research_and_teaching_experiences/1/edit" }.should route_to(:controller => "research_and_teaching_experiences", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/research_and_teaching_experiences" }.should route_to(:controller => "research_and_teaching_experiences", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/research_and_teaching_experiences/1" }.should route_to(:controller => "research_and_teaching_experiences", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/research_and_teaching_experiences/1" }.should route_to(:controller => "research_and_teaching_experiences", :action => "destroy", :id => "1")
    end

  end
end
