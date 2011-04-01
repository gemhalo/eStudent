require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BorrowedItemsController do

  def mock_borrowed_item(stubs={})
    @mock_borrowed_item ||= mock_model(BorrowedItem, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all borrowed_items as @borrowed_items" do
      BorrowedItem.stub(:all) { [mock_borrowed_item] }
      get :index
      assigns(:borrowed_items).should eq([mock_borrowed_item])
    end
  end

  describe "GET show" do
    it "assigns the requested borrowed_item as @borrowed_item" do
      BorrowedItem.stub(:find).with("37") { mock_borrowed_item }
      get :show, :id => "37"
      assigns(:borrowed_item).should be(mock_borrowed_item)
    end
  end

  describe "GET new" do
    it "assigns a new borrowed_item as @borrowed_item" do
      BorrowedItem.stub(:new) { mock_borrowed_item }
      get :new
      assigns(:borrowed_item).should be(mock_borrowed_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested borrowed_item as @borrowed_item" do
      BorrowedItem.stub(:find).with("37") { mock_borrowed_item }
      get :edit, :id => "37"
      assigns(:borrowed_item).should be(mock_borrowed_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created borrowed_item as @borrowed_item" do
        BorrowedItem.stub(:new).with({'these' => 'params'}) { mock_borrowed_item(:save => true) }
        post :create, :borrowed_item => {'these' => 'params'}
        assigns(:borrowed_item).should be(mock_borrowed_item)
      end

      it "redirects to the created borrowed_item" do
        BorrowedItem.stub(:new) { mock_borrowed_item(:save => true) }
        post :create, :borrowed_item => {}
        response.should redirect_to(borrowed_item_url(mock_borrowed_item))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved borrowed_item as @borrowed_item" do
        BorrowedItem.stub(:new).with({'these' => 'params'}) { mock_borrowed_item(:save => false) }
        post :create, :borrowed_item => {'these' => 'params'}
        assigns(:borrowed_item).should be(mock_borrowed_item)
      end

      it "re-renders the 'new' template" do
        BorrowedItem.stub(:new) { mock_borrowed_item(:save => false) }
        post :create, :borrowed_item => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested borrowed_item" do
        BorrowedItem.stub(:find).with("37") { mock_borrowed_item }
        mock_borrowed_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :borrowed_item => {'these' => 'params'}
      end

      it "assigns the requested borrowed_item as @borrowed_item" do
        BorrowedItem.stub(:find) { mock_borrowed_item(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:borrowed_item).should be(mock_borrowed_item)
      end

      it "redirects to the borrowed_item" do
        BorrowedItem.stub(:find) { mock_borrowed_item(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(borrowed_item_url(mock_borrowed_item))
      end
    end

    describe "with invalid params" do
      it "assigns the borrowed_item as @borrowed_item" do
        BorrowedItem.stub(:find) { mock_borrowed_item(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:borrowed_item).should be(mock_borrowed_item)
      end

      it "re-renders the 'edit' template" do
        BorrowedItem.stub(:find) { mock_borrowed_item(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested borrowed_item" do
      BorrowedItem.stub(:find).with("37") { mock_borrowed_item }
      mock_borrowed_item.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the borrowed_items list" do
      BorrowedItem.stub(:find) { mock_borrowed_item }
      delete :destroy, :id => "1"
      response.should redirect_to(borrowed_items_url)
    end
  end

end