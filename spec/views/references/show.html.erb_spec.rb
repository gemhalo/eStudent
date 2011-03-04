require 'spec_helper'

describe "references/show.html.erb" do
  before(:each) do
    @reference = assign(:reference, stub_model(Reference,
      :full_name => "Full Name",
      :office_telephone => "Office Telephone",
      :mobile_telephone => "Mobile Telephone",
      :email => "Email",
      :profession => "Profession",
      :applicant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Office Telephone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mobile Telephone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Profession/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
