require 'spec_helper'

describe "ethnicities/show.html.erb" do
  before(:each) do
    @ethnicity = assign(:ethnicity, stub_model(Ethnicity,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
