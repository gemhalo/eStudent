require 'spec_helper'

describe "admission_types/index.html.erb" do
  before(:each) do
    assign(:admission_types, [
      stub_model(AdmissionType,
        :name => "Name"
      ),
      stub_model(AdmissionType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of admission_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
