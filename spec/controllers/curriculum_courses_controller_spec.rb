require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CurriculumCoursesController do

  def mock_curriculum_course(stubs={})
    @mock_curriculum_course ||= mock_model(CurriculumCourse, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all curriculum_courses as @curriculum_courses" do
      CurriculumCourse.stub(:all) { [mock_curriculum_course] }
      get :index
      assigns(:curriculum_courses).should eq([mock_curriculum_course])
    end
  end

  describe "GET show" do
    it "assigns the requested curriculum_course as @curriculum_course" do
      CurriculumCourse.stub(:find).with("37") { mock_curriculum_course }
      get :show, :id => "37"
      assigns(:curriculum_course).should be(mock_curriculum_course)
    end
  end

  describe "GET new" do
    it "assigns a new curriculum_course as @curriculum_course" do
      CurriculumCourse.stub(:new) { mock_curriculum_course }
      get :new
      assigns(:curriculum_course).should be(mock_curriculum_course)
    end
  end

  describe "GET edit" do
    it "assigns the requested curriculum_course as @curriculum_course" do
      CurriculumCourse.stub(:find).with("37") { mock_curriculum_course }
      get :edit, :id => "37"
      assigns(:curriculum_course).should be(mock_curriculum_course)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created curriculum_course as @curriculum_course" do
        CurriculumCourse.stub(:new).with({'these' => 'params'}) { mock_curriculum_course(:save => true) }
        post :create, :curriculum_course => {'these' => 'params'}
        assigns(:curriculum_course).should be(mock_curriculum_course)
      end

      it "redirects to the created curriculum_course" do
        CurriculumCourse.stub(:new) { mock_curriculum_course(:save => true) }
        post :create, :curriculum_course => {}
        response.should redirect_to(curriculum_course_url(mock_curriculum_course))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved curriculum_course as @curriculum_course" do
        CurriculumCourse.stub(:new).with({'these' => 'params'}) { mock_curriculum_course(:save => false) }
        post :create, :curriculum_course => {'these' => 'params'}
        assigns(:curriculum_course).should be(mock_curriculum_course)
      end

      it "re-renders the 'new' template" do
        CurriculumCourse.stub(:new) { mock_curriculum_course(:save => false) }
        post :create, :curriculum_course => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested curriculum_course" do
        CurriculumCourse.stub(:find).with("37") { mock_curriculum_course }
        mock_curriculum_course.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :curriculum_course => {'these' => 'params'}
      end

      it "assigns the requested curriculum_course as @curriculum_course" do
        CurriculumCourse.stub(:find) { mock_curriculum_course(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:curriculum_course).should be(mock_curriculum_course)
      end

      it "redirects to the curriculum_course" do
        CurriculumCourse.stub(:find) { mock_curriculum_course(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(curriculum_course_url(mock_curriculum_course))
      end
    end

    describe "with invalid params" do
      it "assigns the curriculum_course as @curriculum_course" do
        CurriculumCourse.stub(:find) { mock_curriculum_course(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:curriculum_course).should be(mock_curriculum_course)
      end

      it "re-renders the 'edit' template" do
        CurriculumCourse.stub(:find) { mock_curriculum_course(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested curriculum_course" do
      CurriculumCourse.stub(:find).with("37") { mock_curriculum_course }
      mock_curriculum_course.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the curriculum_courses list" do
      CurriculumCourse.stub(:find) { mock_curriculum_course }
      delete :destroy, :id => "1"
      response.should redirect_to(curriculum_courses_url)
    end
  end

end