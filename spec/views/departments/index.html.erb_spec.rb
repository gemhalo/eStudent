require 'spec_helper'

describe "departments/index.html.erb" do
  before(:each) do
    assign(:departments, [
      stub_model(Department,
        :name => "Name",
        :college_id => 1
      ),
      stub_model(Department,
        :name => "Name",
        :college_id => 1
      )
    ])
  end

  it "renders a list of departments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
