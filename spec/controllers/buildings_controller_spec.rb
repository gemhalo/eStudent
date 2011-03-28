require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BuildingsController do

  def mock_building(stubs={})
    @mock_building ||= mock_model(Building, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all buildings as @buildings" do
      Building.stub(:all) { [mock_building] }
      get :index
      assigns(:buildings).should eq([mock_building])
    end
  end

  describe "GET show" do
    it "assigns the requested building as @building" do
      Building.stub(:find).with("37") { mock_building }
      get :show, :id => "37"
      assigns(:building).should be(mock_building)
    end
  end

  describe "GET new" do
    it "assigns a new building as @building" do
      Building.stub(:new) { mock_building }
      get :new
      assigns(:building).should be(mock_building)
    end
  end

  describe "GET edit" do
    it "assigns the requested building as @building" do
      Building.stub(:find).with("37") { mock_building }
      get :edit, :id => "37"
      assigns(:building).should be(mock_building)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created building as @building" do
        Building.stub(:new).with({'these' => 'params'}) { mock_building(:save => true) }
        post :create, :building => {'these' => 'params'}
        assigns(:building).should be(mock_building)
      end

      it "redirects to the created building" do
        Building.stub(:new) { mock_building(:save => true) }
        post :create, :building => {}
        response.should redirect_to(building_url(mock_building))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved building as @building" do
        Building.stub(:new).with({'these' => 'params'}) { mock_building(:save => false) }
        post :create, :building => {'these' => 'params'}
        assigns(:building).should be(mock_building)
      end

      it "re-renders the 'new' template" do
        Building.stub(:new) { mock_building(:save => false) }
        post :create, :building => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested building" do
        Building.stub(:find).with("37") { mock_building }
        mock_building.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :building => {'these' => 'params'}
      end

      it "assigns the requested building as @building" do
        Building.stub(:find) { mock_building(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:building).should be(mock_building)
      end

      it "redirects to the building" do
        Building.stub(:find) { mock_building(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(building_url(mock_building))
      end
    end

    describe "with invalid params" do
      it "assigns the building as @building" do
        Building.stub(:find) { mock_building(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:building).should be(mock_building)
      end

      it "re-renders the 'edit' template" do
        Building.stub(:find) { mock_building(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested building" do
      Building.stub(:find).with("37") { mock_building }
      mock_building.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the buildings list" do
      Building.stub(:find) { mock_building }
      delete :destroy, :id => "1"
      response.should redirect_to(buildings_url)
    end
  end

end
