require 'spec_helper'

describe "course_assignments/index.html.erb" do
  before(:each) do
    assign(:course_assignments, [
      stub_model(CourseAssignment,
        :offered_course_id => 1,
        :instructor_id => 1,
        :section => "Section"
      ),
      stub_model(CourseAssignment,
        :offered_course_id => 1,
        :instructor_id => 1,
        :section => "Section"
      )
    ])
  end

  it "renders a list of course_assignments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Section".to_s, :count => 2
  end
end
