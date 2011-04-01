require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe ClearanceRequestsController do

  def mock_clearance_request(stubs={})
    @mock_clearance_request ||= mock_model(ClearanceRequest, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all clearance_requests as @clearance_requests" do
      ClearanceRequest.stub(:all) { [mock_clearance_request] }
      get :index
      assigns(:clearance_requests).should eq([mock_clearance_request])
    end
  end

  describe "GET show" do
    it "assigns the requested clearance_request as @clearance_request" do
      ClearanceRequest.stub(:find).with("37") { mock_clearance_request }
      get :show, :id => "37"
      assigns(:clearance_request).should be(mock_clearance_request)
    end
  end

  describe "GET new" do
    it "assigns a new clearance_request as @clearance_request" do
      ClearanceRequest.stub(:new) { mock_clearance_request }
      get :new
      assigns(:clearance_request).should be(mock_clearance_request)
    end
  end

  describe "GET edit" do
    it "assigns the requested clearance_request as @clearance_request" do
      ClearanceRequest.stub(:find).with("37") { mock_clearance_request }
      get :edit, :id => "37"
      assigns(:clearance_request).should be(mock_clearance_request)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created clearance_request as @clearance_request" do
        ClearanceRequest.stub(:new).with({'these' => 'params'}) { mock_clearance_request(:save => true) }
        post :create, :clearance_request => {'these' => 'params'}
        assigns(:clearance_request).should be(mock_clearance_request)
      end

      it "redirects to the created clearance_request" do
        ClearanceRequest.stub(:new) { mock_clearance_request(:save => true) }
        post :create, :clearance_request => {}
        response.should redirect_to(clearance_request_url(mock_clearance_request))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved clearance_request as @clearance_request" do
        ClearanceRequest.stub(:new).with({'these' => 'params'}) { mock_clearance_request(:save => false) }
        post :create, :clearance_request => {'these' => 'params'}
        assigns(:clearance_request).should be(mock_clearance_request)
      end

      it "re-renders the 'new' template" do
        ClearanceRequest.stub(:new) { mock_clearance_request(:save => false) }
        post :create, :clearance_request => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested clearance_request" do
        ClearanceRequest.stub(:find).with("37") { mock_clearance_request }
        mock_clearance_request.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :clearance_request => {'these' => 'params'}
      end

      it "assigns the requested clearance_request as @clearance_request" do
        ClearanceRequest.stub(:find) { mock_clearance_request(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:clearance_request).should be(mock_clearance_request)
      end

      it "redirects to the clearance_request" do
        ClearanceRequest.stub(:find) { mock_clearance_request(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(clearance_request_url(mock_clearance_request))
      end
    end

    describe "with invalid params" do
      it "assigns the clearance_request as @clearance_request" do
        ClearanceRequest.stub(:find) { mock_clearance_request(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:clearance_request).should be(mock_clearance_request)
      end

      it "re-renders the 'edit' template" do
        ClearanceRequest.stub(:find) { mock_clearance_request(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested clearance_request" do
      ClearanceRequest.stub(:find).with("37") { mock_clearance_request }
      mock_clearance_request.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the clearance_requests list" do
      ClearanceRequest.stub(:find) { mock_clearance_request }
      delete :destroy, :id => "1"
      response.should redirect_to(clearance_requests_url)
    end
  end

end
