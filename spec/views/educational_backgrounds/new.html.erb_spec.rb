require 'spec_helper'

describe "educational_backgrounds/new.html.erb" do
  before(:each) do
    assign(:educational_background, stub_model(EducationalBackground,
      :institution_type => "MyString",
      :institution_name => "MyString",
      :result_type => "MyString",
      :eheece_code => "MyString",
      :school_code => "MyString",
      :institution_region => "MyString",
      :institution_zone => "MyString",
      :institution_town => "MyString",
      :result => 1,
      :out_of => 1,
      :department => "MyString",
      :college_leave_reason => "MyString",
      :applicant_id => 1,
      :attachment_file_name => "MyString",
      :attachment_content_type => "MyString",
      :attachment_file_size => 1
    ).as_new_record)
  end

  it "renders new educational_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => educational_backgrounds_path, :method => "post" do
      assert_select "input#educational_background_institution_type", :name => "educational_background[institution_type]"
      assert_select "input#educational_background_institution_name", :name => "educational_background[institution_name]"
      assert_select "input#educational_background_result_type", :name => "educational_background[result_type]"
      assert_select "input#educational_background_eheece_code", :name => "educational_background[eheece_code]"
      assert_select "input#educational_background_school_code", :name => "educational_background[school_code]"
      assert_select "input#educational_background_institution_region", :name => "educational_background[institution_region]"
      assert_select "input#educational_background_institution_zone", :name => "educational_background[institution_zone]"
      assert_select "input#educational_background_institution_town", :name => "educational_background[institution_town]"
      assert_select "input#educational_background_result", :name => "educational_background[result]"
      assert_select "input#educational_background_out_of", :name => "educational_background[out_of]"
      assert_select "input#educational_background_department", :name => "educational_background[department]"
      assert_select "input#educational_background_college_leave_reason", :name => "educational_background[college_leave_reason]"
      assert_select "input#educational_background_applicant_id", :name => "educational_background[applicant_id]"
      assert_select "input#educational_background_attachment_file_name", :name => "educational_background[attachment_file_name]"
      assert_select "input#educational_background_attachment_content_type", :name => "educational_background[attachment_content_type]"
      assert_select "input#educational_background_attachment_file_size", :name => "educational_background[attachment_file_size]"
    end
  end
end
