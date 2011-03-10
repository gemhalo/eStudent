require 'spec_helper'

describe "emergency_contacts/show.html.erb" do
  before(:each) do
    @emergency_contact = assign(:emergency_contact, stub_model(EmergencyContact,
      :full_name => "Full Name",
      :relationship => "Relationship",
      :residence_telephone => "Residence Telephone",
      :office_telephone => "Office Telephone",
      :mobile_telephone => "Mobile Telephone",
      :applicant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Relationship/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Residence Telephone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Office Telephone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mobile Telephone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
