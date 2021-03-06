require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MenuitemsController do

  def mock_menuitem(stubs={})
    @mock_menuitem ||= mock_model(Menuitem, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all menuitems as @menuitems" do
      Menuitem.stub(:all) { [mock_menuitem] }
      get :index
      assigns(:menuitems).should eq([mock_menuitem])
    end
  end

  describe "GET show" do
    it "assigns the requested menuitem as @menuitem" do
      Menuitem.stub(:find).with("37") { mock_menuitem }
      get :show, :id => "37"
      assigns(:menuitem).should be(mock_menuitem)
    end
  end

  describe "GET new" do
    it "assigns a new menuitem as @menuitem" do
      Menuitem.stub(:new) { mock_menuitem }
      get :new
      assigns(:menuitem).should be(mock_menuitem)
    end
  end

  describe "GET edit" do
    it "assigns the requested menuitem as @menuitem" do
      Menuitem.stub(:find).with("37") { mock_menuitem }
      get :edit, :id => "37"
      assigns(:menuitem).should be(mock_menuitem)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created menuitem as @menuitem" do
        Menuitem.stub(:new).with({'these' => 'params'}) { mock_menuitem(:save => true) }
        post :create, :menuitem => {'these' => 'params'}
        assigns(:menuitem).should be(mock_menuitem)
      end

      it "redirects to the created menuitem" do
        Menuitem.stub(:new) { mock_menuitem(:save => true) }
        post :create, :menuitem => {}
        response.should redirect_to(menuitem_url(mock_menuitem))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved menuitem as @menuitem" do
        Menuitem.stub(:new).with({'these' => 'params'}) { mock_menuitem(:save => false) }
        post :create, :menuitem => {'these' => 'params'}
        assigns(:menuitem).should be(mock_menuitem)
      end

      it "re-renders the 'new' template" do
        Menuitem.stub(:new) { mock_menuitem(:save => false) }
        post :create, :menuitem => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested menuitem" do
        Menuitem.stub(:find).with("37") { mock_menuitem }
        mock_menuitem.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :menuitem => {'these' => 'params'}
      end

      it "assigns the requested menuitem as @menuitem" do
        Menuitem.stub(:find) { mock_menuitem(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:menuitem).should be(mock_menuitem)
      end

      it "redirects to the menuitem" do
        Menuitem.stub(:find) { mock_menuitem(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(menuitem_url(mock_menuitem))
      end
    end

    describe "with invalid params" do
      it "assigns the menuitem as @menuitem" do
        Menuitem.stub(:find) { mock_menuitem(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:menuitem).should be(mock_menuitem)
      end

      it "re-renders the 'edit' template" do
        Menuitem.stub(:find) { mock_menuitem(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested menuitem" do
      Menuitem.stub(:find).with("37") { mock_menuitem }
      mock_menuitem.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the menuitems list" do
      Menuitem.stub(:find) { mock_menuitem }
      delete :destroy, :id => "1"
      response.should redirect_to(menuitems_url)
    end
  end

end
