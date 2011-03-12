require 'spec_helper'

describe "employment_informations/index.html.erb" do
  before(:each) do
    assign(:employment_informations, [
      stub_model(EmploymentInformation,
        :job_type => "Job Type",
        :employer_name => "Employer Name",
        :employer_telephone => "Employer Telephone",
        :employer_pobox => "Employer Pobox",
        :employer_email => "Employer Email",
        :applicant_id => 1
      ),
      stub_model(EmploymentInformation,
        :job_type => "Job Type",
        :employer_name => "Employer Name",
        :employer_telephone => "Employer Telephone",
        :employer_pobox => "Employer Pobox",
        :employer_email => "Employer Email",
        :applicant_id => 1
      )
    ])
  end

  it "renders a list of employment_informations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Job Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employer Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employer Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employer Pobox".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employer Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
