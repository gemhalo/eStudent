require 'spec_helper'

describe "rooms/show.html.erb" do
  before(:each) do
    @room = assign(:room, stub_model(Room,
      :room_number => "Room Number",
      :building_id => 1,
      :floor_number => 1,
      :holding_capacity => 1,
      :used_for => "Used For"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Room Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Used For/)
  end
end
