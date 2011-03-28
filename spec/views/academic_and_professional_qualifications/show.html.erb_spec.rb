require 'spec_helper'

describe "academic_and_professional_qualifications/show.html.erb" do
  before(:each) do
    @academic_and_professional_qualification = assign(:academic_and_professional_qualification, stub_model(AcademicAndProfessionalQualification,
      :attachment_file_name => "Attachment File Name",
      :attachment_content_type => "Attachment Content Type",
      :attachment_file_size => 1,
      :applicant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Attachment File Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Attachment Content Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
