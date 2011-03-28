require 'spec_helper'

describe "employment_informations/show.html.erb" do
  before(:each) do
    @employment_information = assign(:employment_information, stub_model(EmploymentInformation,
      :job_type => "Job Type",
      :employer_name => "Employer Name",
      :employer_telephone => "Employer Telephone",
      :employer_pobox => "Employer Pobox",
      :employer_email => "Employer Email",
      :applicant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Job Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employer Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employer Telephone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employer Pobox/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employer Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
