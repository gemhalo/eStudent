require 'spec_helper'

describe "financial_supports/index.html.erb" do
  before(:each) do
    assign(:financial_supports, [
      stub_model(FinancialSupport,
        :supporter_type => "Supporter Type",
        :supporter_name => "Supporter Name",
        :supporter_telephone => "Supporter Telephone",
        :supporter_pobox => "Supporter Pobox",
        :email => "Email",
        :attachment_file_name => "Attachment File Name",
        :attachment_content_type => "Attachment Content Type",
        :attachment_file_size => 1,
        :applicant_id => 1
      ),
      stub_model(FinancialSupport,
        :supporter_type => "Supporter Type",
        :supporter_name => "Supporter Name",
        :supporter_telephone => "Supporter Telephone",
        :supporter_pobox => "Supporter Pobox",
        :email => "Email",
        :attachment_file_name => "Attachment File Name",
        :attachment_content_type => "Attachment Content Type",
        :attachment_file_size => 1,
        :applicant_id => 1
      )
    ])
  end

  it "renders a list of financial_supports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Supporter Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Supporter Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Supporter Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Supporter Pobox".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Attachment File Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Attachment Content Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
