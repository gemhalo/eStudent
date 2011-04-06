require 'spec_helper'

describe "curriculum_courses/new.html.erb" do
  before(:each) do
    assign(:curriculum_course, stub_model(CurriculumCourse,
      :curriculum_id => 1,
      :course_id => 1,
      :course_type => "MyString",
      :price => 1.5
    ).as_new_record)
  end

  it "renders new curriculum_course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => curriculum_courses_path, :method => "post" do
      assert_select "input#curriculum_course_curriculum_id", :name => "curriculum_course[curriculum_id]"
      assert_select "input#curriculum_course_course_id", :name => "curriculum_course[course_id]"
      assert_select "input#curriculum_course_course_type", :name => "curriculum_course[course_type]"
      assert_select "input#curriculum_course_price", :name => "curriculum_course[price]"
    end
  end
end
