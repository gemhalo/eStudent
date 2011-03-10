require 'spec_helper'

describe "educational_backgrounds/show.html.erb" do
  before(:each) do
    @educational_background = assign(:educational_background, stub_model(EducationalBackground,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Institution Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Institution Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Result Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Eheece Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Institution Region/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Institution Zone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Institution Town/)
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
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Attachment File Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Attachment Content Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
