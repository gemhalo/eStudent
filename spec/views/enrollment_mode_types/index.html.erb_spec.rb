require 'spec_helper'

describe "enrollment_mode_types/index.html.erb" do
  before(:each) do
    assign(:enrollment_mode_types, [
      stub_model(EnrollmentModeType,
        :name => "Name"
      ),
      stub_model(EnrollmentModeType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of enrollment_mode_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
