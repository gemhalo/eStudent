require 'spec_helper'

describe "assign_instructors/new.html.erb" do
  before(:each) do
    assign(:assign_instructor, stub_model(AssignInstructor,
      :offered_course_id => 1,
      :instructor_id => 1,
      :section => "MyString"
    ).as_new_record)
  end

  it "renders new assign_instructor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assign_instructors_path, :method => "post" do
      assert_select "input#assign_instructor_offered_course_id", :name => "assign_instructor[offered_course_id]"
      assert_select "input#assign_instructor_instructor_id", :name => "assign_instructor[instructor_id]"
      assert_select "input#assign_instructor_section", :name => "assign_instructor[section]"
    end
  end
end
