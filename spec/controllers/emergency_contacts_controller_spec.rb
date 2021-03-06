require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe EmergencyContactsController do

  def mock_emergency_contact(stubs={})
    @mock_emergency_contact ||= mock_model(EmergencyContact, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all emergency_contacts as @emergency_contacts" do
      EmergencyContact.stub(:all) { [mock_emergency_contact] }
      get :index
      assigns(:emergency_contacts).should eq([mock_emergency_contact])
    end
  end

  describe "GET show" do
    it "assigns the requested emergency_contact as @emergency_contact" do
      EmergencyContact.stub(:find).with("37") { mock_emergency_contact }
      get :show, :id => "37"
      assigns(:emergency_contact).should be(mock_emergency_contact)
    end
  end

  describe "GET new" do
    it "assigns a new emergency_contact as @emergency_contact" do
      EmergencyContact.stub(:new) { mock_emergency_contact }
      get :new
      assigns(:emergency_contact).should be(mock_emergency_contact)
    end
  end

  describe "GET edit" do
    it "assigns the requested emergency_contact as @emergency_contact" do
      EmergencyContact.stub(:find).with("37") { mock_emergency_contact }
      get :edit, :id => "37"
      assigns(:emergency_contact).should be(mock_emergency_contact)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created emergency_contact as @emergency_contact" do
        EmergencyContact.stub(:new).with({'these' => 'params'}) { mock_emergency_contact(:save => true) }
        post :create, :emergency_contact => {'these' => 'params'}
        assigns(:emergency_contact).should be(mock_emergency_contact)
      end

      it "redirects to the created emergency_contact" do
        EmergencyContact.stub(:new) { mock_emergency_contact(:save => true) }
        post :create, :emergency_contact => {}
        response.should redirect_to(emergency_contact_url(mock_emergency_contact))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved emergency_contact as @emergency_contact" do
        EmergencyContact.stub(:new).with({'these' => 'params'}) { mock_emergency_contact(:save => false) }
        post :create, :emergency_contact => {'these' => 'params'}
        assigns(:emergency_contact).should be(mock_emergency_contact)
      end

      it "re-renders the 'new' template" do
        EmergencyContact.stub(:new) { mock_emergency_contact(:save => false) }
        post :create, :emergency_contact => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested emergency_contact" do
        EmergencyContact.stub(:find).with("37") { mock_emergency_contact }
        mock_emergency_contact.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :emergency_contact => {'these' => 'params'}
      end

      it "assigns the requested emergency_contact as @emergency_contact" do
        EmergencyContact.stub(:find) { mock_emergency_contact(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:emergency_contact).should be(mock_emergency_contact)
      end

      it "redirects to the emergency_contact" do
        EmergencyContact.stub(:find) { mock_emergency_contact(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(emergency_contact_url(mock_emergency_contact))
      end
    end

    describe "with invalid params" do
      it "assigns the emergency_contact as @emergency_contact" do
        EmergencyContact.stub(:find) { mock_emergency_contact(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:emergency_contact).should be(mock_emergency_contact)
      end

      it "re-renders the 'edit' template" do
        EmergencyContact.stub(:find) { mock_emergency_contact(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested emergency_contact" do
      EmergencyContact.stub(:find).with("37") { mock_emergency_contact }
      mock_emergency_contact.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the emergency_contacts list" do
      EmergencyContact.stub(:find) { mock_emergency_contact }
      delete :destroy, :id => "1"
      response.should redirect_to(emergency_contacts_url)
    end
  end

end
