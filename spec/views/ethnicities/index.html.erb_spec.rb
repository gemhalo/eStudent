require 'spec_helper'

describe "ethnicities/index.html.erb" do
  before(:each) do
    assign(:ethnicities, [
      stub_model(Ethnicity,
        :name => "Name"
      ),
      stub_model(Ethnicity,
        :name => "Name"
      )
    ])
  end

  it "renders a list of ethnicities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
