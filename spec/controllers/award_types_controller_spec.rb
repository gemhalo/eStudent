require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe AwardTypesController do

  def mock_award_type(stubs={})
    @mock_award_type ||= mock_model(AwardType, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all award_types as @award_types" do
      AwardType.stub(:all) { [mock_award_type] }
      get :index
      assigns(:award_types).should eq([mock_award_type])
    end
  end

  describe "GET show" do
    it "assigns the requested award_type as @award_type" do
      AwardType.stub(:find).with("37") { mock_award_type }
      get :show, :id => "37"
      assigns(:award_type).should be(mock_award_type)
    end
  end

  describe "GET new" do
    it "assigns a new award_type as @award_type" do
      AwardType.stub(:new) { mock_award_type }
      get :new
      assigns(:award_type).should be(mock_award_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested award_type as @award_type" do
      AwardType.stub(:find).with("37") { mock_award_type }
      get :edit, :id => "37"
      assigns(:award_type).should be(mock_award_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created award_type as @award_type" do
        AwardType.stub(:new).with({'these' => 'params'}) { mock_award_type(:save => true) }
        post :create, :award_type => {'these' => 'params'}
        assigns(:award_type).should be(mock_award_type)
      end

      it "redirects to the created award_type" do
        AwardType.stub(:new) { mock_award_type(:save => true) }
        post :create, :award_type => {}
        response.should redirect_to(award_type_url(mock_award_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved award_type as @award_type" do
        AwardType.stub(:new).with({'these' => 'params'}) { mock_award_type(:save => false) }
        post :create, :award_type => {'these' => 'params'}
        assigns(:award_type).should be(mock_award_type)
      end

      it "re-renders the 'new' template" do
        AwardType.stub(:new) { mock_award_type(:save => false) }
        post :create, :award_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested award_type" do
        AwardType.stub(:find).with("37") { mock_award_type }
        mock_award_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :award_type => {'these' => 'params'}
      end

      it "assigns the requested award_type as @award_type" do
        AwardType.stub(:find) { mock_award_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:award_type).should be(mock_award_type)
      end

      it "redirects to the award_type" do
        AwardType.stub(:find) { mock_award_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(award_type_url(mock_award_type))
      end
    end

    describe "with invalid params" do
      it "assigns the award_type as @award_type" do
        AwardType.stub(:find) { mock_award_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:award_type).should be(mock_award_type)
      end

      it "re-renders the 'edit' template" do
        AwardType.stub(:find) { mock_award_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested award_type" do
      AwardType.stub(:find).with("37") { mock_award_type }
      mock_award_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the award_types list" do
      AwardType.stub(:find) { mock_award_type }
      delete :destroy, :id => "1"
      response.should redirect_to(award_types_url)
    end
  end

end
