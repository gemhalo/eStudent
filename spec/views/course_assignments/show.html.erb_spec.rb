require 'spec_helper'

describe "course_assignments/show.html.erb" do
  before(:each) do
    @course_assignment = assign(:course_assignment, stub_model(CourseAssignment,
      :offered_course_id => 1,
      :instructor_id => 1,
      :section => "Section"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Section/)
  end
end
