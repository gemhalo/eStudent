require 'spec_helper'

describe "emergency_contacts/new.html.erb" do
  before(:each) do
    assign(:emergency_contact, stub_model(EmergencyContact,
      :full_name => "MyString",
      :relationship => "MyString",
      :residence_telephone => "MyString",
      :office_telephone => "MyString",
      :mobile_telephone => "MyString",
      :applicant_id => 1
    ).as_new_record)
  end

  it "renders new emergency_contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => emergency_contacts_path, :method => "post" do
      assert_select "input#emergency_contact_full_name", :name => "emergency_contact[full_name]"
      assert_select "input#emergency_contact_relationship", :name => "emergency_contact[relationship]"
      assert_select "input#emergency_contact_residence_telephone", :name => "emergency_contact[residence_telephone]"
      assert_select "input#emergency_contact_office_telephone", :name => "emergency_contact[office_telephone]"
      assert_select "input#emergency_contact_mobile_telephone", :name => "emergency_contact[mobile_telephone]"
      assert_select "input#emergency_contact_applicant_id", :name => "emergency_contact[applicant_id]"
    end
  end
end
