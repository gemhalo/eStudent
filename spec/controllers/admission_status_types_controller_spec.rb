require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe AdmissionStatusTypesController do

  def mock_admission_status_type(stubs={})
    @mock_admission_status_type ||= mock_model(AdmissionStatusType, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all admission_status_types as @admission_status_types" do
      AdmissionStatusType.stub(:all) { [mock_admission_status_type] }
      get :index
      assigns(:admission_status_types).should eq([mock_admission_status_type])
    end
  end

  describe "GET show" do
    it "assigns the requested admission_status_type as @admission_status_type" do
      AdmissionStatusType.stub(:find).with("37") { mock_admission_status_type }
      get :show, :id => "37"
      assigns(:admission_status_type).should be(mock_admission_status_type)
    end
  end

  describe "GET new" do
    it "assigns a new admission_status_type as @admission_status_type" do
      AdmissionStatusType.stub(:new) { mock_admission_status_type }
      get :new
      assigns(:admission_status_type).should be(mock_admission_status_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested admission_status_type as @admission_status_type" do
      AdmissionStatusType.stub(:find).with("37") { mock_admission_status_type }
      get :edit, :id => "37"
      assigns(:admission_status_type).should be(mock_admission_status_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created admission_status_type as @admission_status_type" do
        AdmissionStatusType.stub(:new).with({'these' => 'params'}) { mock_admission_status_type(:save => true) }
        post :create, :admission_status_type => {'these' => 'params'}
        assigns(:admission_status_type).should be(mock_admission_status_type)
      end

      it "redirects to the created admission_status_type" do
        AdmissionStatusType.stub(:new) { mock_admission_status_type(:save => true) }
        post :create, :admission_status_type => {}
        response.should redirect_to(admission_status_type_url(mock_admission_status_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admission_status_type as @admission_status_type" do
        AdmissionStatusType.stub(:new).with({'these' => 'params'}) { mock_admission_status_type(:save => false) }
        post :create, :admission_status_type => {'these' => 'params'}
        assigns(:admission_status_type).should be(mock_admission_status_type)
      end

      it "re-renders the 'new' template" do
        AdmissionStatusType.stub(:new) { mock_admission_status_type(:save => false) }
        post :create, :admission_status_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested admission_status_type" do
        AdmissionStatusType.stub(:find).with("37") { mock_admission_status_type }
        mock_admission_status_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :admission_status_type => {'these' => 'params'}
      end

      it "assigns the requested admission_status_type as @admission_status_type" do
        AdmissionStatusType.stub(:find) { mock_admission_status_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:admission_status_type).should be(mock_admission_status_type)
      end

      it "redirects to the admission_status_type" do
        AdmissionStatusType.stub(:find) { mock_admission_status_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(admission_status_type_url(mock_admission_status_type))
      end
    end

    describe "with invalid params" do
      it "assigns the admission_status_type as @admission_status_type" do
        AdmissionStatusType.stub(:find) { mock_admission_status_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:admission_status_type).should be(mock_admission_status_type)
      end

      it "re-renders the 'edit' template" do
        AdmissionStatusType.stub(:find) { mock_admission_status_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admission_status_type" do
      AdmissionStatusType.stub(:find).with("37") { mock_admission_status_type }
      mock_admission_status_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the admission_status_types list" do
      AdmissionStatusType.stub(:find) { mock_admission_status_type }
      delete :destroy, :id => "1"
      response.should redirect_to(admission_status_types_url)
    end
  end

end
