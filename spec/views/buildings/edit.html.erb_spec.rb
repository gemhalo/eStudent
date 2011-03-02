require 'spec_helper'

describe "buildings/edit.html.erb" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :building_name => "MyString",
      :number_of_rooms => 1,
      :number_of_beds_per_room => 1
    ))
  end

  it "renders the edit building form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => buildings_path(@building), :method => "post" do
      assert_select "input#building_building_name", :name => "building[building_name]"
      assert_select "input#building_number_of_rooms", :name => "building[number_of_rooms]"
      assert_select "input#building_number_of_beds_per_room", :name => "building[number_of_beds_per_room]"
    end
  end
end
