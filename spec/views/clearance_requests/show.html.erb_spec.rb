require 'spec_helper'

describe "clearance_requests/show.html.erb" do
  before(:each) do
    @clearance_request = assign(:clearance_request, stub_model(ClearanceRequest,
      :student_id => 1,
      :reason_for => "Reason For",
      :reason_for_withdrawal => "Reason For Withdrawal",
      :approval => false,
      :attachment => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reason For/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reason For Withdrawal/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
