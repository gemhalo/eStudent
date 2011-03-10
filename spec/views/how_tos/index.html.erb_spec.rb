require 'spec_helper'

describe "how_tos/index.html.erb" do
  before(:each) do
    assign(:how_tos, [
      stub_model(HowTo,
        :title => "Title",
        :detail => "Detail"
      ),
      stub_model(HowTo,
        :title => "Title",
        :detail => "Detail"
      )
    ])
  end

  it "renders a list of how_tos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detail".to_s, :count => 2
  end
end
