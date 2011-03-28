require 'spec_helper'

describe "financial_supports/new.html.erb" do
  before(:each) do
    assign(:financial_support, stub_model(FinancialSupport,
      :supporter_type => "MyString",
      :supporter_name => "MyString",
      :supporter_telephone => "MyString",
      :supporter_pobox => "MyString",
      :email => "MyString",
      :attachment_file_name => "MyString",
      :attachment_content_type => "MyString",
      :attachment_file_size => 1,
      :applicant_id => 1
    ).as_new_record)
  end

  it "renders new financial_support form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => financial_supports_path, :method => "post" do
      assert_select "input#financial_support_supporter_type", :name => "financial_support[supporter_type]"
      assert_select "input#financial_support_supporter_name", :name => "financial_support[supporter_name]"
      assert_select "input#financial_support_supporter_telephone", :name => "financial_support[supporter_telephone]"
      assert_select "input#financial_support_supporter_pobox", :name => "financial_support[supporter_pobox]"
      assert_select "input#financial_support_email", :name => "financial_support[email]"
      assert_select "input#financial_support_attachment_file_name", :name => "financial_support[attachment_file_name]"
      assert_select "input#financial_support_attachment_content_type", :name => "financial_support[attachment_content_type]"
      assert_select "input#financial_support_attachment_file_size", :name => "financial_support[attachment_file_size]"
      assert_select "input#financial_support_applicant_id", :name => "financial_support[applicant_id]"
    end
  end
end
