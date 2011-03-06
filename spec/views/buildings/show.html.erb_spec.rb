require 'spec_helper'

describe "buildings/show.html.erb" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :building_name => "Building Name",
      :number_of_rooms => 1,
      :number_of_beds_per_room => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Building Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
