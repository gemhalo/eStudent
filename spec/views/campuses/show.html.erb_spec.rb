require 'spec_helper'

describe "campuses/show.html.erb" do
  before(:each) do
    @campuse = assign(:campuse, stub_model(Campuse,
      :name => "Name",
      :campus_telephone => 1,
      :campus_pobox => "Campus Pobox",
      :campus_email => "Campus Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Campus Pobox/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Campus Email/)
  end
end
