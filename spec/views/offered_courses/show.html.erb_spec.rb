require 'spec_helper'

describe "offered_courses/show.html.erb" do
  before(:each) do
    @offered_course = assign(:offered_course, stub_model(OfferedCourse,
      :curriculum_course_id => 1,
      :academic_year_semester_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
