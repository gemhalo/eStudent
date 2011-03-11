require 'spec_helper'

describe "award_types/index.html.erb" do
  before(:each) do
    assign(:award_types, [
      stub_model(AwardType,
        :name => "Name"
      ),
      stub_model(AwardType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of award_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
