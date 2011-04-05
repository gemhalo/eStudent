require 'spec_helper'

describe "curriculum_courses/index.html.erb" do
  before(:each) do
    assign(:curriculum_courses, [
      stub_model(CurriculumCourse,
        :curriculum_id => 1,
        :course_id => 1,
        :course_type => "Course Type",
        :price => 1.5
      ),
      stub_model(CurriculumCourse,
        :curriculum_id => 1,
        :course_id => 1,
        :course_type => "Course Type",
        :price => 1.5
      )
    ])
  end

  it "renders a list of curriculum_courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Course Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
