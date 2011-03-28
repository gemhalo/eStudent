require 'spec_helper'

describe "courses/index.html.erb" do
  before(:each) do
    assign(:courses, [
      stub_model(Course,
        :course_title => "Course Title",
        :course_code => "Course Code",
        :credit_hour => 1,
        :description => "Description",
        :department_id => 1
      ),
      stub_model(Course,
        :course_title => "Course Title",
        :course_code => "Course Code",
        :credit_hour => 1,
        :description => "Description",
        :department_id => 1
      )
    ])
  end

  it "renders a list of courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Course Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Course Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
