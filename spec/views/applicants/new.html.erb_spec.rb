require 'spec_helper'

describe "applicants/new.html.erb" do
  before(:each) do
    assign(:applicant, stub_model(Applicant,
      :person_id => 1,
      :admission_id => 1,
      :college_id => 1,
      :entry_level => "MyString",
      :major_field_of_study => "MyString",
      :minor_field_of_study => "MyString",
      :academic_year => "MyString",
      :admission_status => false
    ).as_new_record)
  end

  it "renders new applicant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => applicants_path, :method => "post" do
      assert_select "input#applicant_person_id", :name => "applicant[person_id]"
      assert_select "input#applicant_admission_id", :name => "applicant[admission_id]"
      assert_select "input#applicant_college_id", :name => "applicant[college_id]"
      assert_select "input#applicant_entry_level", :name => "applicant[entry_level]"
      assert_select "input#applicant_major_field_of_study", :name => "applicant[major_field_of_study]"
      assert_select "input#applicant_minor_field_of_study", :name => "applicant[minor_field_of_study]"
      assert_select "input#applicant_academic_year", :name => "applicant[academic_year]"
      assert_select "input#applicant_admission_status", :name => "applicant[admission_status]"
    end
  end
end
