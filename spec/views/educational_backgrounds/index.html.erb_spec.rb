require 'spec_helper'

describe "educational_backgrounds/index.html.erb" do
  before(:each) do
    assign(:educational_backgrounds, [
      stub_model(EducationalBackground,
        :institution_type => "Institution Type",
        :institution_name => "Institution Name",
        :region => "Region",
        :zone => "Zone",
        :town => "Town",
        :result => 1,
        :out_of => 1,
        :department => "Department",
        :college_leave_reason => "College Leave Reason",
        :applicant_id => 1
      ),
      stub_model(EducationalBackground,
        :institution_type => "Institution Type",
        :institution_name => "Institution Name",
        :region => "Region",
        :zone => "Zone",
        :town => "Town",
        :result => 1,
        :out_of => 1,
        :department => "Department",
        :college_leave_reason => "College Leave Reason",
        :applicant_id => 1
      )
    ])
  end

  it "renders a list of educational_backgrounds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Institution Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Institution Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Town".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "College Leave Reason".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
