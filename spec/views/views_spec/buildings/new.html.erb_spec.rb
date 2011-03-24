require 'spec_helper'

describe "buildings/new.html.erb" do
  before(:each) do
    assign(:building, stub_model(Building,
      :building_name => "MyString",
      :campus_id => 1,
      :floors => 1
    ).as_new_record)
  end

  it "renders new building form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => buildings_path, :method => "post" do
      assert_select "input#building_building_name", :name => "building[building_name]"
      assert_select "input#building_campus_id", :name => "building[campus_id]"
      assert_select "input#building_floors", :name => "building[floors]"
    end
  end
end
