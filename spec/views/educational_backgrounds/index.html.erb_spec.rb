require 'spec_helper'

describe "educational_backgrounds/index.html.erb" do
  before(:each) do
    assign(:educational_backgrounds, [
      stub_model(EducationalBackground,
        :institution_type => "Institution Type",
        :institution_name => "Institution Name",
        :result_type => "Result Type",
        :eheece_code => "Eheece Code",
        :school_code => "School Code",
        :institution_region => "Institution Region",
        :institution_zone => "Institution Zone",
        :institution_town => "Institution Town",
        :result => 1,
        :out_of => 1,
        :department => "Department",
        :college_leave_reason => "College Leave Reason",
        :applicant_id => 1,
        :attachment_file_name => "Attachment File Name",
        :attachment_content_type => "Attachment Content Type",
        :attachment_file_size => 1
      ),
      stub_model(EducationalBackground,
        :institution_type => "Institution Type",
        :institution_name => "Institution Name",
        :result_type => "Result Type",
        :eheece_code => "Eheece Code",
        :school_code => "School Code",
        :institution_region => "Institution Region",
        :institution_zone => "Institution Zone",
        :institution_town => "Institution Town",
        :result => 1,
        :out_of => 1,
        :department => "Department",
        :college_leave_reason => "College Leave Reason",
        :applicant_id => 1,
        :attachment_file_name => "Attachment File Name",
        :attachment_content_type => "Attachment Content Type",
        :attachment_file_size => 1
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
    assert_select "tr>td", :text => "Result Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Eheece Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Institution Region".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Institution Zone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Institution Town".to_s, :count => 2
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
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Attachment File Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Attachment Content Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
