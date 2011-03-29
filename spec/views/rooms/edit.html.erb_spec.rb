require 'spec_helper'

describe "rooms/edit.html.erb" do
  before(:each) do
    @room = assign(:room, stub_model(Room,
      :room_number => "MyString",
      :building_id => 1,
      :floor_number => 1,
      :holding_capacity => 1,
      :used_for => "MyString"
    ))
  end

  it "renders the edit room form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rooms_path(@room), :method => "post" do
      assert_select "input#room_room_number", :name => "room[room_number]"
      assert_select "input#room_building_id", :name => "room[building_id]"
      assert_select "input#room_floor_number", :name => "room[floor_number]"
      assert_select "input#room_holding_capacity", :name => "room[holding_capacity]"
      assert_select "input#room_used_for", :name => "room[used_for]"
    end
  end
end
