require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe InstructorsController do

  def mock_instructor(stubs={})
    @mock_instructor ||= mock_model(Instructor, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all instructors as @instructors" do
      Instructor.stub(:all) { [mock_instructor] }
      get :index
      assigns(:instructors).should eq([mock_instructor])
    end
  end

  describe "GET show" do
    it "assigns the requested instructor as @instructor" do
      Instructor.stub(:find).with("37") { mock_instructor }
      get :show, :id => "37"
      assigns(:instructor).should be(mock_instructor)
    end
  end

  describe "GET new" do
    it "assigns a new instructor as @instructor" do
      Instructor.stub(:new) { mock_instructor }
      get :new
      assigns(:instructor).should be(mock_instructor)
    end
  end

  describe "GET edit" do
    it "assigns the requested instructor as @instructor" do
      Instructor.stub(:find).with("37") { mock_instructor }
      get :edit, :id => "37"
      assigns(:instructor).should be(mock_instructor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created instructor as @instructor" do
        Instructor.stub(:new).with({'these' => 'params'}) { mock_instructor(:save => true) }
        post :create, :instructor => {'these' => 'params'}
        assigns(:instructor).should be(mock_instructor)
      end

      it "redirects to the created instructor" do
        Instructor.stub(:new) { mock_instructor(:save => true) }
        post :create, :instructor => {}
        response.should redirect_to(instructor_url(mock_instructor))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved instructor as @instructor" do
        Instructor.stub(:new).with({'these' => 'params'}) { mock_instructor(:save => false) }
        post :create, :instructor => {'these' => 'params'}
        assigns(:instructor).should be(mock_instructor)
      end

      it "re-renders the 'new' template" do
        Instructor.stub(:new) { mock_instructor(:save => false) }
        post :create, :instructor => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested instructor" do
        Instructor.stub(:find).with("37") { mock_instructor }
        mock_instructor.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :instructor => {'these' => 'params'}
      end

      it "assigns the requested instructor as @instructor" do
        Instructor.stub(:find) { mock_instructor(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:instructor).should be(mock_instructor)
      end

      it "redirects to the instructor" do
        Instructor.stub(:find) { mock_instructor(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(instructor_url(mock_instructor))
      end
    end

    describe "with invalid params" do
      it "assigns the instructor as @instructor" do
        Instructor.stub(:find) { mock_instructor(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:instructor).should be(mock_instructor)
      end

      it "re-renders the 'edit' template" do
        Instructor.stub(:find) { mock_instructor(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested instructor" do
      Instructor.stub(:find).with("37") { mock_instructor }
      mock_instructor.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the instructors list" do
      Instructor.stub(:find) { mock_instructor }
      delete :destroy, :id => "1"
      response.should redirect_to(instructors_url)
    end
  end

end
