require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe ReferencesController do

  def mock_reference(stubs={})
    @mock_reference ||= mock_model(Reference, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all references as @references" do
      Reference.stub(:all) { [mock_reference] }
      get :index
      assigns(:references).should eq([mock_reference])
    end
  end

  describe "GET show" do
    it "assigns the requested reference as @reference" do
      Reference.stub(:find).with("37") { mock_reference }
      get :show, :id => "37"
      assigns(:reference).should be(mock_reference)
    end
  end

  describe "GET new" do
    it "assigns a new reference as @reference" do
      Reference.stub(:new) { mock_reference }
      get :new
      assigns(:reference).should be(mock_reference)
    end
  end

  describe "GET edit" do
    it "assigns the requested reference as @reference" do
      Reference.stub(:find).with("37") { mock_reference }
      get :edit, :id => "37"
      assigns(:reference).should be(mock_reference)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created reference as @reference" do
        Reference.stub(:new).with({'these' => 'params'}) { mock_reference(:save => true) }
        post :create, :reference => {'these' => 'params'}
        assigns(:reference).should be(mock_reference)
      end

      it "redirects to the created reference" do
        Reference.stub(:new) { mock_reference(:save => true) }
        post :create, :reference => {}
        response.should redirect_to(reference_url(mock_reference))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved reference as @reference" do
        Reference.stub(:new).with({'these' => 'params'}) { mock_reference(:save => false) }
        post :create, :reference => {'these' => 'params'}
        assigns(:reference).should be(mock_reference)
      end

      it "re-renders the 'new' template" do
        Reference.stub(:new) { mock_reference(:save => false) }
        post :create, :reference => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested reference" do
        Reference.stub(:find).with("37") { mock_reference }
        mock_reference.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :reference => {'these' => 'params'}
      end

      it "assigns the requested reference as @reference" do
        Reference.stub(:find) { mock_reference(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:reference).should be(mock_reference)
      end

      it "redirects to the reference" do
        Reference.stub(:find) { mock_reference(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(reference_url(mock_reference))
      end
    end

    describe "with invalid params" do
      it "assigns the reference as @reference" do
        Reference.stub(:find) { mock_reference(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:reference).should be(mock_reference)
      end

      it "re-renders the 'edit' template" do
        Reference.stub(:find) { mock_reference(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested reference" do
      Reference.stub(:find).with("37") { mock_reference }
      mock_reference.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the references list" do
      Reference.stub(:find) { mock_reference }
      delete :destroy, :id => "1"
      response.should redirect_to(references_url)
    end
  end

end
