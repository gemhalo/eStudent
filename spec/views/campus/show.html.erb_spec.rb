require 'spec_helper'

describe "campus/show.html.erb" do
  before(:each) do
    @campus = assign(:campus, stub_model(Campus,
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
