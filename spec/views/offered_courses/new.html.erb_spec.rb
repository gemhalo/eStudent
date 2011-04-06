require 'spec_helper'

describe "offered_courses/new.html.erb" do
  before(:each) do
    assign(:offered_course, stub_model(OfferedCourse,
      :curriculum_course_id => 1,
      :academic_year_semester_id => 1
    ).as_new_record)
  end

  it "renders new offered_course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offered_courses_path, :method => "post" do
      assert_select "input#offered_course_curriculum_course_id", :name => "offered_course[curriculum_course_id]"
      assert_select "input#offered_course_academic_year_semester_id", :name => "offered_course[academic_year_semester_id]"
    end
  end
end
