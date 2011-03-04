require "spec_helper"

describe FinancialSupportsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/financial_supports" }.should route_to(:controller => "financial_supports", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/financial_supports/new" }.should route_to(:controller => "financial_supports", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/financial_supports/1" }.should route_to(:controller => "financial_supports", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/financial_supports/1/edit" }.should route_to(:controller => "financial_supports", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/financial_supports" }.should route_to(:controller => "financial_supports", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/financial_supports/1" }.should route_to(:controller => "financial_supports", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/financial_supports/1" }.should route_to(:controller => "financial_supports", :action => "destroy", :id => "1")
    end

  end
end
