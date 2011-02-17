require 'spec_helper'

describe "enrollement_types/index.html.erb" do
  before(:each) do
    assign(:enrollement_types, [
      stub_model(EnrollementType,
        :name => "Name"
      ),
      stub_model(EnrollementType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of enrollement_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
