require 'spec_helper'

describe "colleges/index.html.erb" do
  before(:each) do
    assign(:colleges, [
      stub_model(College,
        :name => "Name",
        :campus_id => 1,
        :dean => "Dean"
      ),
      stub_model(College,
        :name => "Name",
        :campus_id => 1,
        :dean => "Dean"
      )
    ])
  end

  it "renders a list of colleges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dean".to_s, :count => 2
  end
end
