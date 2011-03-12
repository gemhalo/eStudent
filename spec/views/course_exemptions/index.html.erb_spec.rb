require 'spec_helper'

describe "course_exemptions/index.html.erb" do
  before(:each) do
    assign(:course_exemptions, [
      stub_model(CourseExemption,
        :course_name => "Course Name",
        :credit_hour => 1,
        :applicant_id => 1
      ),
      stub_model(CourseExemption,
        :course_name => "Course Name",
        :credit_hour => 1,
        :applicant_id => 1
      )
    ])
  end

  it "renders a list of course_exemptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Course Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
