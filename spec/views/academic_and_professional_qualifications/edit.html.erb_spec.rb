require 'spec_helper'

describe "academic_and_professional_qualifications/edit.html.erb" do
  before(:each) do
    @academic_and_professional_qualification = assign(:academic_and_professional_qualification, stub_model(AcademicAndProfessionalQualification,
      :attachment_file_name => "MyString",
      :attachment_content_type => "MyString",
      :attachment_file_size => 1,
      :applicant_id => 1
    ))
  end

  it "renders the edit academic_and_professional_qualification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_and_professional_qualifications_path(@academic_and_professional_qualification), :method => "post" do
      assert_select "input#academic_and_professional_qualification_attachment_file_name", :name => "academic_and_professional_qualification[attachment_file_name]"
      assert_select "input#academic_and_professional_qualification_attachment_content_type", :name => "academic_and_professional_qualification[attachment_content_type]"
      assert_select "input#academic_and_professional_qualification_attachment_file_size", :name => "academic_and_professional_qualification[attachment_file_size]"
      assert_select "input#academic_and_professional_qualification_applicant_id", :name => "academic_and_professional_qualification[applicant_id]"
    end
  end
end
