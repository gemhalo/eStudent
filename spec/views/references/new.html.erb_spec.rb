require 'spec_helper'

describe "references/new.html.erb" do
  before(:each) do
    assign(:reference, stub_model(Reference,
      :full_name => "MyString",
      :office_telephone => "MyString",
      :mobile_telephone => "MyString",
      :email => "MyString",
      :profession => "MyString",
      :applicant_id => 1
    ).as_new_record)
  end

  it "renders new reference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => references_path, :method => "post" do
      assert_select "input#reference_full_name", :name => "reference[full_name]"
      assert_select "input#reference_office_telephone", :name => "reference[office_telephone]"
      assert_select "input#reference_mobile_telephone", :name => "reference[mobile_telephone]"
      assert_select "input#reference_email", :name => "reference[email]"
      assert_select "input#reference_profession", :name => "reference[profession]"
      assert_select "input#reference_applicant_id", :name => "reference[applicant_id]"
    end
  end
end
