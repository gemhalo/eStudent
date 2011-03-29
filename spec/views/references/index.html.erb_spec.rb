require 'spec_helper'

describe "references/index.html.erb" do
  before(:each) do
    assign(:references, [
      stub_model(Reference,
        :full_name => "Full Name",
        :office_telephone => "Office Telephone",
        :mobile_telephone => "Mobile Telephone",
        :email => "Email",
        :profession => "Profession",
        :applicant_id => 1
      ),
      stub_model(Reference,
        :full_name => "Full Name",
        :office_telephone => "Office Telephone",
        :mobile_telephone => "Mobile Telephone",
        :email => "Email",
        :profession => "Profession",
        :applicant_id => 1
      )
    ])
  end

  it "renders a list of references" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Office Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mobile Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Profession".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
