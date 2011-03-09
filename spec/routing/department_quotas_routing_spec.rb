require "spec_helper"

describe DepartmentQuotasController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/department_quotas" }.should route_to(:controller => "department_quotas", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/department_quotas/new" }.should route_to(:controller => "department_quotas", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/department_quotas/1" }.should route_to(:controller => "department_quotas", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/department_quotas/1/edit" }.should route_to(:controller => "department_quotas", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/department_quotas" }.should route_to(:controller => "department_quotas", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/department_quotas/1" }.should route_to(:controller => "department_quotas", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/department_quotas/1" }.should route_to(:controller => "department_quotas", :action => "destroy", :id => "1")
    end

  end
end
