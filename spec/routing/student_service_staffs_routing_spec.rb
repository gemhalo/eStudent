require "spec_helper"

describe StudentServiceStaffsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/student_service_staffs" }.should route_to(:controller => "student_service_staffs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/student_service_staffs/new" }.should route_to(:controller => "student_service_staffs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/student_service_staffs/1" }.should route_to(:controller => "student_service_staffs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/student_service_staffs/1/edit" }.should route_to(:controller => "student_service_staffs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/student_service_staffs" }.should route_to(:controller => "student_service_staffs", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/student_service_staffs/1" }.should route_to(:controller => "student_service_staffs", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/student_service_staffs/1" }.should route_to(:controller => "student_service_staffs", :action => "destroy", :id => "1")
    end

  end
end
