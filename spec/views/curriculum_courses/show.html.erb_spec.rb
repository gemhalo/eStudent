require 'spec_helper'

describe "curriculum_courses/show.html.erb" do
  before(:each) do
    @curriculum_course = assign(:curriculum_course, stub_model(CurriculumCourse,
      :curriculum_id => 1,
      :course_id => 1,
      :course_type => "Course Type",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Course Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
