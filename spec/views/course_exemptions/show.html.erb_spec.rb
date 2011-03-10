require 'spec_helper'

describe "course_exemptions/show.html.erb" do
  before(:each) do
    @course_exemption = assign(:course_exemption, stub_model(CourseExemption,
      :course_name => "Course Name",
      :credit_hour => 1,
      :applicant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Course Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
