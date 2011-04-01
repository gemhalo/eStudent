require 'spec_helper'

describe "clearance_requests/index.html.erb" do
  before(:each) do
    assign(:clearance_requests, [
      stub_model(ClearanceRequest,
        :student_id => 1,
        :reason_for => "Reason For",
        :reason_for_withdrawal => "Reason For Withdrawal",
        :approval => false,
        :attachment => ""
      ),
      stub_model(ClearanceRequest,
        :student_id => 1,
        :reason_for => "Reason For",
        :reason_for_withdrawal => "Reason For Withdrawal",
        :approval => false,
        :attachment => ""
      )
    ])
  end

  it "renders a list of clearance_requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reason For".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reason For Withdrawal".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
