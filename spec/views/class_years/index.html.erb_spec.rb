require 'spec_helper'

describe "class_years/index.html.erb" do
  before(:each) do
    assign(:class_years, [
      stub_model(ClassYear,
        :name => "Name"
      ),
      stub_model(ClassYear,
        :name => "Name"
      )
    ])
  end

  it "renders a list of class_years" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
