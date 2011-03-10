require 'spec_helper'

describe "buildings/edit.html.erb" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :building_name => "MyString",
      :campus_id => 1,
      :floors => 1
    ))
  end

  it "renders the edit building form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => buildings_path(@building), :method => "post" do
      assert_select "input#building_building_name", :name => "building[building_name]"
      assert_select "input#building_campus_id", :name => "building[campus_id]"
      assert_select "input#building_floors", :name => "building[floors]"
    end
  end
end
