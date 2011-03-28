require "spec_helper"

describe AcademicCalendarsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/academic_calendars" }.should route_to(:controller => "academic_calendars", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/academic_calendars/new" }.should route_to(:controller => "academic_calendars", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/academic_calendars/1" }.should route_to(:controller => "academic_calendars", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/academic_calendars/1/edit" }.should route_to(:controller => "academic_calendars", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/academic_calendars" }.should route_to(:controller => "academic_calendars", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/academic_calendars/1" }.should route_to(:controller => "academic_calendars", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/academic_calendars/1" }.should route_to(:controller => "academic_calendars", :action => "destroy", :id => "1")
    end

  end
end
