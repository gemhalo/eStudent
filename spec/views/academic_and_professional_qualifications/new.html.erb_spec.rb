require 'spec_helper'

describe "academic_and_professional_qualifications/new.html.erb" do
  before(:each) do
    assign(:academic_and_professional_qualification, stub_model(AcademicAndProfessionalQualification,
      :attachment_file_name => "MyString",
      :attachment_content_type => "MyString",
      :attachment_file_size => 1,
      :applicant_id => 1
    ).as_new_record)
  end

  it "renders new academic_and_professional_qualification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_and_professional_qualifications_path, :method => "post" do
      assert_select "input#academic_and_professional_qualification_attachment_file_name", :name => "academic_and_professional_qualification[attachment_file_name]"
      assert_select "input#academic_and_professional_qualification_attachment_content_type", :name => "academic_and_professional_qualification[attachment_content_type]"
      assert_select "input#academic_and_professional_qualification_attachment_file_size", :name => "academic_and_professional_qualification[attachment_file_size]"
      assert_select "input#academic_and_professional_qualification_applicant_id", :name => "academic_and_professional_qualification[applicant_id]"
    end
  end
end
