require 'spec_helper'

describe "course_exemptions/new.html.erb" do
  before(:each) do
    assign(:course_exemption, stub_model(CourseExemption,
      :course_name => "MyString",
      :credit_hour => 1,
      :applicant_id => 1
    ).as_new_record)
  end

  it "renders new course_exemption form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => course_exemptions_path, :method => "post" do
      assert_select "input#course_exemption_course_name", :name => "course_exemption[course_name]"
      assert_select "input#course_exemption_credit_hour", :name => "course_exemption[credit_hour]"
      assert_select "input#course_exemption_applicant_id", :name => "course_exemption[applicant_id]"
    end
  end
end
