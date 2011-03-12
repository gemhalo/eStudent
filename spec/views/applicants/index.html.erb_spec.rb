require 'spec_helper'

describe "applicants/index.html.erb" do
  before(:each) do
    assign(:applicants, [
      stub_model(Applicant,
        :person_id => 1,
        :admission_id => 1,
        :college_id => 1,
        :entry_level => "Entry Level",
        :major_field_of_study => "Major Field Of Study",
        :minor_field_of_study => "Minor Field Of Study",
        :academic_year => "Academic Year",
        :admission_status => false
      ),
      stub_model(Applicant,
        :person_id => 1,
        :admission_id => 1,
        :college_id => 1,
        :entry_level => "Entry Level",
        :major_field_of_study => "Major Field Of Study",
        :minor_field_of_study => "Minor Field Of Study",
        :academic_year => "Academic Year",
        :admission_status => false
      )
    ])
  end

  it "renders a list of applicants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Entry Level".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Major Field Of Study".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Minor Field Of Study".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Academic Year".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
