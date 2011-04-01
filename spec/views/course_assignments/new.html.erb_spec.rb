require 'spec_helper'

describe "course_assignments/new.html.erb" do
  before(:each) do
    assign(:course_assignment, stub_model(CourseAssignment,
      :offered_course_id => 1,
      :instructor_id => 1,
      :section => "MyString"
    ).as_new_record)
  end

  it "renders new course_assignment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => course_assignments_path, :method => "post" do
      assert_select "input#course_assignment_offered_course_id", :name => "course_assignment[offered_course_id]"
      assert_select "input#course_assignment_instructor_id", :name => "course_assignment[instructor_id]"
      assert_select "input#course_assignment_section", :name => "course_assignment[section]"
    end
  end
end
