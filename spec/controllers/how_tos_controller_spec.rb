require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe HowTosController do

  def mock_how_to(stubs={})
    @mock_how_to ||= mock_model(HowTo, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all how_tos as @how_tos" do
      HowTo.stub(:all) { [mock_how_to] }
      get :index
      assigns(:how_tos).should eq([mock_how_to])
    end
  end

  describe "GET show" do
    it "assigns the requested how_to as @how_to" do
      HowTo.stub(:find).with("37") { mock_how_to }
      get :show, :id => "37"
      assigns(:how_to).should be(mock_how_to)
    end
  end

  describe "GET new" do
    it "assigns a new how_to as @how_to" do
      HowTo.stub(:new) { mock_how_to }
      get :new
      assigns(:how_to).should be(mock_how_to)
    end
  end

  describe "GET edit" do
    it "assigns the requested how_to as @how_to" do
      HowTo.stub(:find).with("37") { mock_how_to }
      get :edit, :id => "37"
      assigns(:how_to).should be(mock_how_to)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created how_to as @how_to" do
        HowTo.stub(:new).with({'these' => 'params'}) { mock_how_to(:save => true) }
        post :create, :how_to => {'these' => 'params'}
        assigns(:how_to).should be(mock_how_to)
      end

      it "redirects to the created how_to" do
        HowTo.stub(:new) { mock_how_to(:save => true) }
        post :create, :how_to => {}
        response.should redirect_to(how_to_url(mock_how_to))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved how_to as @how_to" do
        HowTo.stub(:new).with({'these' => 'params'}) { mock_how_to(:save => false) }
        post :create, :how_to => {'these' => 'params'}
        assigns(:how_to).should be(mock_how_to)
      end

      it "re-renders the 'new' template" do
        HowTo.stub(:new) { mock_how_to(:save => false) }
        post :create, :how_to => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested how_to" do
        HowTo.stub(:find).with("37") { mock_how_to }
        mock_how_to.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :how_to => {'these' => 'params'}
      end

      it "assigns the requested how_to as @how_to" do
        HowTo.stub(:find) { mock_how_to(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:how_to).should be(mock_how_to)
      end

      it "redirects to the how_to" do
        HowTo.stub(:find) { mock_how_to(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(how_to_url(mock_how_to))
      end
    end

    describe "with invalid params" do
      it "assigns the how_to as @how_to" do
        HowTo.stub(:find) { mock_how_to(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:how_to).should be(mock_how_to)
      end

      it "re-renders the 'edit' template" do
        HowTo.stub(:find) { mock_how_to(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested how_to" do
      HowTo.stub(:find).with("37") { mock_how_to }
      mock_how_to.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the how_tos list" do
      HowTo.stub(:find) { mock_how_to }
      delete :destroy, :id => "1"
      response.should redirect_to(how_tos_url)
    end
  end

end