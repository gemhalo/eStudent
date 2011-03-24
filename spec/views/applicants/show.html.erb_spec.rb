require 'spec_helper'

describe "applicants/show.html.erb" do
  before(:each) do
    @applicant = assign(:applicant, stub_model(Applicant,
      :person_id => 1,
      :admission_id => 1,
      :college_id => 1,
      :entry_level => "Entry Level",
      :major_field_of_study => "Major Field Of Study",
      :minor_field_of_study => "Minor Field Of Study",
      :academic_year => "Academic Year",
      :admission_status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Entry Level/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Major Field Of Study/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Minor Field Of Study/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Academic Year/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
