require 'spec_helper'

describe "financial_supports/show.html.erb" do
  before(:each) do
    @financial_support = assign(:financial_support, stub_model(FinancialSupport,
      :supporter_type => "Supporter Type",
      :supporter_name => "Supporter Name",
      :supporter_telephone => "Supporter Telephone",
      :supporter_pobox => "Supporter Pobox",
      :email => "Email",
      :attachment_file_name => "Attachment File Name",
      :attachment_content_type => "Attachment Content Type",
      :attachment_file_size => 1,
      :applicant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Supporter Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Supporter Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Supporter Telephone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Supporter Pobox/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Attachment File Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Attachment Content Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
