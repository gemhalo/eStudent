require 'spec_helper'

describe "employment_informations/new.html.erb" do
  before(:each) do
    assign(:employment_information, stub_model(EmploymentInformation,
      :job_type => "MyString",
      :employer_name => "MyString",
      :employer_telephone => "MyString",
      :employer_pobox => "MyString",
      :employer_email => "MyString",
      :applicant_id => 1
    ).as_new_record)
  end

  it "renders new employment_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employment_informations_path, :method => "post" do
      assert_select "input#employment_information_job_type", :name => "employment_information[job_type]"
      assert_select "input#employment_information_employer_name", :name => "employment_information[employer_name]"
      assert_select "input#employment_information_employer_telephone", :name => "employment_information[employer_telephone]"
      assert_select "input#employment_information_employer_pobox", :name => "employment_information[employer_pobox]"
      assert_select "input#employment_information_employer_email", :name => "employment_information[employer_email]"
      assert_select "input#employment_information_applicant_id", :name => "employment_information[applicant_id]"
    end
  end
end
