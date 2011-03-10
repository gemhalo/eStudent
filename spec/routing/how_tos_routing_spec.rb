require "spec_helper"

describe HowTosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/how_tos" }.should route_to(:controller => "how_tos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/how_tos/new" }.should route_to(:controller => "how_tos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/how_tos/1" }.should route_to(:controller => "how_tos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/how_tos/1/edit" }.should route_to(:controller => "how_tos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/how_tos" }.should route_to(:controller => "how_tos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/how_tos/1" }.should route_to(:controller => "how_tos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/how_tos/1" }.should route_to(:controller => "how_tos", :action => "destroy", :id => "1")
    end

  end
end
