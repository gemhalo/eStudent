require "spec_helper"

describe ServiceAgreementsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/service_agreements" }.should route_to(:controller => "service_agreements", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/service_agreements/new" }.should route_to(:controller => "service_agreements", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/service_agreements/1" }.should route_to(:controller => "service_agreements", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/service_agreements/1/edit" }.should route_to(:controller => "service_agreements", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/service_agreements" }.should route_to(:controller => "service_agreements", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/service_agreements/1" }.should route_to(:controller => "service_agreements", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/service_agreements/1" }.should route_to(:controller => "service_agreements", :action => "destroy", :id => "1")
    end

  end
end
