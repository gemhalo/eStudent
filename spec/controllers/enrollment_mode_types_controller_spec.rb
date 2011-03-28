require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe EnrollmentModeTypesController do

  def mock_enrollment_mode_type(stubs={})
    @mock_enrollment_mode_type ||= mock_model(EnrollmentModeType, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all enrollment_mode_types as @enrollment_mode_types" do
      EnrollmentModeType.stub(:all) { [mock_enrollment_mode_type] }
      get :index
      assigns(:enrollment_mode_types).should eq([mock_enrollment_mode_type])
    end
  end

  describe "GET show" do
    it "assigns the requested enrollment_mode_type as @enrollment_mode_type" do
      EnrollmentModeType.stub(:find).with("37") { mock_enrollment_mode_type }
      get :show, :id => "37"
      assigns(:enrollment_mode_type).should be(mock_enrollment_mode_type)
    end
  end

  describe "GET new" do
    it "assigns a new enrollment_mode_type as @enrollment_mode_type" do
      EnrollmentModeType.stub(:new) { mock_enrollment_mode_type }
      get :new
      assigns(:enrollment_mode_type).should be(mock_enrollment_mode_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested enrollment_mode_type as @enrollment_mode_type" do
      EnrollmentModeType.stub(:find).with("37") { mock_enrollment_mode_type }
      get :edit, :id => "37"
      assigns(:enrollment_mode_type).should be(mock_enrollment_mode_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created enrollment_mode_type as @enrollment_mode_type" do
        EnrollmentModeType.stub(:new).with({'these' => 'params'}) { mock_enrollment_mode_type(:save => true) }
        post :create, :enrollment_mode_type => {'these' => 'params'}
        assigns(:enrollment_mode_type).should be(mock_enrollment_mode_type)
      end

      it "redirects to the created enrollment_mode_type" do
        EnrollmentModeType.stub(:new) { mock_enrollment_mode_type(:save => true) }
        post :create, :enrollment_mode_type => {}
        response.should redirect_to(enrollment_mode_type_url(mock_enrollment_mode_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved enrollment_mode_type as @enrollment_mode_type" do
        EnrollmentModeType.stub(:new).with({'these' => 'params'}) { mock_enrollment_mode_type(:save => false) }
        post :create, :enrollment_mode_type => {'these' => 'params'}
        assigns(:enrollment_mode_type).should be(mock_enrollment_mode_type)
      end

      it "re-renders the 'new' template" do
        EnrollmentModeType.stub(:new) { mock_enrollment_mode_type(:save => false) }
        post :create, :enrollment_mode_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested enrollment_mode_type" do
        EnrollmentModeType.stub(:find).with("37") { mock_enrollment_mode_type }
        mock_enrollment_mode_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :enrollment_mode_type => {'these' => 'params'}
      end

      it "assigns the requested enrollment_mode_type as @enrollment_mode_type" do
        EnrollmentModeType.stub(:find) { mock_enrollment_mode_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:enrollment_mode_type).should be(mock_enrollment_mode_type)
      end

      it "redirects to the enrollment_mode_type" do
        EnrollmentModeType.stub(:find) { mock_enrollment_mode_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(enrollment_mode_type_url(mock_enrollment_mode_type))
      end
    end

    describe "with invalid params" do
      it "assigns the enrollment_mode_type as @enrollment_mode_type" do
        EnrollmentModeType.stub(:find) { mock_enrollment_mode_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:enrollment_mode_type).should be(mock_enrollment_mode_type)
      end

      it "re-renders the 'edit' template" do
        EnrollmentModeType.stub(:find) { mock_enrollment_mode_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested enrollment_mode_type" do
      EnrollmentModeType.stub(:find).with("37") { mock_enrollment_mode_type }
      mock_enrollment_mode_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the enrollment_mode_types list" do
      EnrollmentModeType.stub(:find) { mock_enrollment_mode_type }
      delete :destroy, :id => "1"
      response.should redirect_to(enrollment_mode_types_url)
    end
  end

end
