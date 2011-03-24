require 'spec_helper'

describe "campuses/index.html.erb" do
  before(:each) do
    assign(:campuses, [
      stub_model(Campus,
        :name => "Name"
      ),
      stub_model(Campus,
        :name => "Name"
      )
    ])
  end

  it "renders a list of campuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Campus Pobox".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Campus Email".to_s, :count => 2
  end
end
