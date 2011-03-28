require 'spec_helper'

describe "buildings/show.html.erb" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :building_name => "Building Name",
      :campus_id => 1,
      :floors => 1
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
