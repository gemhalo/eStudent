require 'spec_helper'

describe "offered_courses/index.html.erb" do
  before(:each) do
    assign(:offered_courses, [
      stub_model(OfferedCourse,
        :curriculum_id => 1,
        :academic_semester_id => 1
      ),
      stub_model(OfferedCourse,
        :curriculum_id => 1,
        :academic_semester_id => 1
      )
    ])
  end

  it "renders a list of offered_courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
