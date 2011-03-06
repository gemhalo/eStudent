require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe EducationalBackgroundsController do

  def mock_educational_background(stubs={})
    @mock_educational_background ||= mock_model(EducationalBackground, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all educational_backgrounds as @educational_backgrounds" do
      EducationalBackground.stub(:all) { [mock_educational_background] }
      get :index
      assigns(:educational_backgrounds).should eq([mock_educational_background])
    end
  end

  describe "GET show" do
    it "assigns the requested educational_background as @educational_background" do
      EducationalBackground.stub(:find).with("37") { mock_educational_background }
      get :show, :id => "37"
      assigns(:educational_background).should be(mock_educational_background)
    end
  end

  describe "GET new" do
    it "assigns a new educational_background as @educational_background" do
      EducationalBackground.stub(:new) { mock_educational_background }
      get :new
      assigns(:educational_background).should be(mock_educational_background)
    end
  end

  describe "GET edit" do
    it "assigns the requested educational_background as @educational_background" do
      EducationalBackground.stub(:find).with("37") { mock_educational_background }
      get :edit, :id => "37"
      assigns(:educational_background).should be(mock_educational_background)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created educational_background as @educational_background" do
        EducationalBackground.stub(:new).with({'these' => 'params'}) { mock_educational_background(:save => true) }
        post :create, :educational_background => {'these' => 'params'}
        assigns(:educational_background).should be(mock_educational_background)
      end

      it "redirects to the created educational_background" do
        EducationalBackground.stub(:new) { mock_educational_background(:save => true) }
        post :create, :educational_background => {}
        response.should redirect_to(educational_background_url(mock_educational_background))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved educational_background as @educational_background" do
        EducationalBackground.stub(:new).with({'these' => 'params'}) { mock_educational_background(:save => false) }
        post :create, :educational_background => {'these' => 'params'}
        assigns(:educational_background).should be(mock_educational_background)
      end

      it "re-renders the 'new' template" do
        EducationalBackground.stub(:new) { mock_educational_background(:save => false) }
        post :create, :educational_background => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested educational_background" do
        EducationalBackground.stub(:find).with("37") { mock_educational_background }
        mock_educational_background.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :educational_background => {'these' => 'params'}
      end

      it "assigns the requested educational_background as @educational_background" do
        EducationalBackground.stub(:find) { mock_educational_background(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:educational_background).should be(mock_educational_background)
      end

      it "redirects to the educational_background" do
        EducationalBackground.stub(:find) { mock_educational_background(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(educational_background_url(mock_educational_background))
      end
    end

    describe "with invalid params" do
      it "assigns the educational_background as @educational_background" do
        EducationalBackground.stub(:find) { mock_educational_background(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:educational_background).should be(mock_educational_background)
      end

      it "re-renders the 'edit' template" do
        EducationalBackground.stub(:find) { mock_educational_background(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested educational_background" do
      EducationalBackground.stub(:find).with("37") { mock_educational_background }
      mock_educational_background.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the educational_backgrounds list" do
      EducationalBackground.stub(:find) { mock_educational_background }
      delete :destroy, :id => "1"
      response.should redirect_to(educational_backgrounds_url)
    end
  end

end