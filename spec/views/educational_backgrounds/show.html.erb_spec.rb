require 'spec_helper'

describe "educational_backgrounds/show.html.erb" do
  before(:each) do
    @educational_background = assign(:educational_background, stub_model(EducationalBackground,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Institution Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Institution Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Region/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Town/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Department/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/College Leave Reason/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
