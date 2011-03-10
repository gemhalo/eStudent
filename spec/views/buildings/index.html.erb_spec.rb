require 'spec_helper'

describe "buildings/index.html.erb" do
  before(:each) do
    assign(:buildings, [
      stub_model(Building,
        :building_name => "Building Name",
        :campus_id => 1,
        :floors => 1
      ),
      stub_model(Building,
        :building_name => "Building Name",
        :campus_id => 1,
        :floors => 1
      )
    ])
  end

  it "renders a list of buildings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Building Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
