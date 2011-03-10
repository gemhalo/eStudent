require 'spec_helper'

describe "academic_and_professional_qualifications/index.html.erb" do
  before(:each) do
    assign(:academic_and_professional_qualifications, [
      stub_model(AcademicAndProfessionalQualification,
        :attachment_file_name => "Attachment File Name",
        :attachment_content_type => "Attachment Content Type",
        :attachment_file_size => 1,
        :applicant_id => 1
      ),
      stub_model(AcademicAndProfessionalQualification,
        :attachment_file_name => "Attachment File Name",
        :attachment_content_type => "Attachment Content Type",
        :attachment_file_size => 1,
        :applicant_id => 1
      )
    ])
  end

  it "renders a list of academic_and_professional_qualifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Attachment File Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Attachment Content Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
