require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe AcademicCaledarsController do

  def mock_academic_caledar(stubs={})
    @mock_academic_caledar ||= mock_model(AcademicCaledar, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all academic_caledars as @academic_caledars" do
      AcademicCaledar.stub(:all) { [mock_academic_caledar] }
      get :index
      assigns(:academic_caledars).should eq([mock_academic_caledar])
    end
  end

  describe "GET show" do
    it "assigns the requested academic_caledar as @academic_caledar" do
      AcademicCaledar.stub(:find).with("37") { mock_academic_caledar }
      get :show, :id => "37"
      assigns(:academic_caledar).should be(mock_academic_caledar)
    end
  end

  describe "GET new" do
    it "assigns a new academic_caledar as @academic_caledar" do
      AcademicCaledar.stub(:new) { mock_academic_caledar }
      get :new
      assigns(:academic_caledar).should be(mock_academic_caledar)
    end
  end

  describe "GET edit" do
    it "assigns the requested academic_caledar as @academic_caledar" do
      AcademicCaledar.stub(:find).with("37") { mock_academic_caledar }
      get :edit, :id => "37"
      assigns(:academic_caledar).should be(mock_academic_caledar)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created academic_caledar as @academic_caledar" do
        AcademicCaledar.stub(:new).with({'these' => 'params'}) { mock_academic_caledar(:save => true) }
        post :create, :academic_caledar => {'these' => 'params'}
        assigns(:academic_caledar).should be(mock_academic_caledar)
      end

      it "redirects to the created academic_caledar" do
        AcademicCaledar.stub(:new) { mock_academic_caledar(:save => true) }
        post :create, :academic_caledar => {}
        response.should redirect_to(academic_caledar_url(mock_academic_caledar))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved academic_caledar as @academic_caledar" do
        AcademicCaledar.stub(:new).with({'these' => 'params'}) { mock_academic_caledar(:save => false) }
        post :create, :academic_caledar => {'these' => 'params'}
        assigns(:academic_caledar).should be(mock_academic_caledar)
      end

      it "re-renders the 'new' template" do
        AcademicCaledar.stub(:new) { mock_academic_caledar(:save => false) }
        post :create, :academic_caledar => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested academic_caledar" do
        AcademicCaledar.stub(:find).with("37") { mock_academic_caledar }
        mock_academic_caledar.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :academic_caledar => {'these' => 'params'}
      end

      it "assigns the requested academic_caledar as @academic_caledar" do
        AcademicCaledar.stub(:find) { mock_academic_caledar(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:academic_caledar).should be(mock_academic_caledar)
      end

      it "redirects to the academic_caledar" do
        AcademicCaledar.stub(:find) { mock_academic_caledar(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(academic_caledar_url(mock_academic_caledar))
      end
    end

    describe "with invalid params" do
      it "assigns the academic_caledar as @academic_caledar" do
        AcademicCaledar.stub(:find) { mock_academic_caledar(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:academic_caledar).should be(mock_academic_caledar)
      end

      it "re-renders the 'edit' template" do
        AcademicCaledar.stub(:find) { mock_academic_caledar(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested academic_caledar" do
      AcademicCaledar.stub(:find).with("37") { mock_academic_caledar }
      mock_academic_caledar.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the academic_caledars list" do
      AcademicCaledar.stub(:find) { mock_academic_caledar }
      delete :destroy, :id => "1"
      response.should redirect_to(academic_caledars_url)
    end
  end

end
