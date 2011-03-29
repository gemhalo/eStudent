require 'spec_helper'

describe "agreements/index.html.erb" do
  before(:each) do
    assign(:agreements, [
      stub_model(Agreement,
        :agreement => false,
        :applicant_id => 1
      ),
      stub_model(Agreement,
        :agreement => false,
        :applicant_id => 1
      )
    ])
  end

  it "renders a list of agreements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
