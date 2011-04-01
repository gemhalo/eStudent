require 'spec_helper'

describe "semesters/index.html.erb" do
  before(:each) do
    assign(:semesters, [
      stub_model(Semester,
        :name => "Name"
      ),
      stub_model(Semester,
        :name => "Name"
      )
    ])
  end

  it "renders a list of semesters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
