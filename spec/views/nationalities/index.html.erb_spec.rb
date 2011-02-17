require 'spec_helper'

describe "nationalities/index.html.erb" do
  before(:each) do
    assign(:nationalities, [
      stub_model(Nationality,
        :name => "Name"
      ),
      stub_model(Nationality,
        :name => "Name"
      )
    ])
  end

  it "renders a list of nationalities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
