require 'spec_helper'

describe "rooms/index.html.erb" do
  before(:each) do
    assign(:rooms, [
      stub_model(Room,
        :room_number => "Room Number",
        :building_id => 1,
        :floor_number => 1,
        :holding_capacity => 1,
        :used_for => "Used For"
      ),
      stub_model(Room,
        :room_number => "Room Number",
        :building_id => 1,
        :floor_number => 1,
        :holding_capacity => 1,
        :used_for => "Used For"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Room Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Used For".to_s, :count => 2
  end
end
