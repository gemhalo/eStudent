require 'spec_helper'

describe "courses/new.html.erb" do
  before(:each) do
    assign(:course, stub_model(Course,
      :course_title => "MyString",
      :course_code => "MyString",
      :credit_hour => 1,
      :description => "MyString",
      :department_id => 1
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path, :method => "post" do
      assert_select "input#course_course_title", :name => "course[course_title]"
      assert_select "input#course_course_code", :name => "course[course_code]"
      assert_select "input#course_credit_hour", :name => "course[credit_hour]"
      assert_select "input#course_description", :name => "course[description]"
      assert_select "input#course_department_id", :name => "course[department_id]"
    end
  end
end
