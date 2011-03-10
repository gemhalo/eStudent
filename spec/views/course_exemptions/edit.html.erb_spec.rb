require 'spec_helper'

describe "course_exemptions/edit.html.erb" do
  before(:each) do
    @course_exemption = assign(:course_exemption, stub_model(CourseExemption,
      :course_name => "MyString",
      :credit_hour => 1,
      :applicant_id => 1
    ))
  end

  it "renders the edit course_exemption form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => course_exemptions_path(@course_exemption), :method => "post" do
      assert_select "input#course_exemption_course_name", :name => "course_exemption[course_name]"
      assert_select "input#course_exemption_credit_hour", :name => "course_exemption[credit_hour]"
      assert_select "input#course_exemption_applicant_id", :name => "course_exemption[applicant_id]"
    end
  end
end
