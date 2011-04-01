require "spec_helper"

describe BorrowedItemsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/borrowed_items" }.should route_to(:controller => "borrowed_items", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/borrowed_items/new" }.should route_to(:controller => "borrowed_items", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/borrowed_items/1" }.should route_to(:controller => "borrowed_items", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/borrowed_items/1/edit" }.should route_to(:controller => "borrowed_items", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/borrowed_items" }.should route_to(:controller => "borrowed_items", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/borrowed_items/1" }.should route_to(:controller => "borrowed_items", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/borrowed_items/1" }.should route_to(:controller => "borrowed_items", :action => "destroy", :id => "1")
    end

  end
end
