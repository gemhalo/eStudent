require "spec_helper"

describe EmergencyContactsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/emergency_contacts" }.should route_to(:controller => "emergency_contacts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/emergency_contacts/new" }.should route_to(:controller => "emergency_contacts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/emergency_contacts/1" }.should route_to(:controller => "emergency_contacts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/emergency_contacts/1/edit" }.should route_to(:controller => "emergency_contacts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/emergency_contacts" }.should route_to(:controller => "emergency_contacts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/emergency_contacts/1" }.should route_to(:controller => "emergency_contacts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/emergency_contacts/1" }.should route_to(:controller => "emergency_contacts", :action => "destroy", :id => "1")
    end

  end
end
