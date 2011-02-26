require "spec_helper"

describe UserSessionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/user_sessions" }.should route_to(:controller => "user_sessions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/user_sessions/new" }.should route_to(:controller => "user_sessions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/user_sessions/1" }.should route_to(:controller => "user_sessions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/user_sessions/1/edit" }.should route_to(:controller => "user_sessions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/user_sessions" }.should route_to(:controller => "user_sessions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/user_sessions/1" }.should route_to(:controller => "user_sessions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/user_sessions/1" }.should route_to(:controller => "user_sessions", :action => "destroy", :id => "1")
    end

  end
end
