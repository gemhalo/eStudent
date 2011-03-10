require 'spec_helper'

describe "emergency_contacts/index.html.erb" do
  before(:each) do
    assign(:emergency_contacts, [
      stub_model(EmergencyContact,
        :full_name => "Full Name",
        :relationship => "Relationship",
        :residence_telephone => "Residence Telephone",
        :office_telephone => "Office Telephone",
        :mobile_telephone => "Mobile Telephone",
        :applicant_id => 1
      ),
      stub_model(EmergencyContact,
        :full_name => "Full Name",
        :relationship => "Relationship",
        :residence_telephone => "Residence Telephone",
        :office_telephone => "Office Telephone",
        :mobile_telephone => "Mobile Telephone",
        :applicant_id => 1
      )
    ])
  end

  it "renders a list of emergency_contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Relationship".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Residence Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Office Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mobile Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
