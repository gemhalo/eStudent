require 'spec_helper'

describe "how_tos/show.html.erb" do
  before(:each) do
    @how_to = assign(:how_to, stub_model(HowTo,
      :title => "Title",
      :detail => "Detail"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detail/)
  end
end
