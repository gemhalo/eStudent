require 'spec_helper'

describe "clearance_requests/new.html.erb" do
  before(:each) do
    assign(:clearance_request, stub_model(ClearanceRequest,
      :student_id => 1,
      :reason_for => "MyString",
      :reason_for_withdrawal => "MyString",
      :approval => false,
      :attachment => ""
    ).as_new_record)
  end

  it "renders new clearance_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clearance_requests_path, :method => "post" do
      assert_select "input#clearance_request_student_id", :name => "clearance_request[student_id]"
      assert_select "input#clearance_request_reason_for", :name => "clearance_request[reason_for]"
      assert_select "input#clearance_request_reason_for_withdrawal", :name => "clearance_request[reason_for_withdrawal]"
      assert_select "input#clearance_request_approval", :name => "clearance_request[approval]"
      assert_select "input#clearance_request_attachment", :name => "clearance_request[attachment]"
    end
  end
end