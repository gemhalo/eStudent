require 'spec_helper'

describe "admission_status_types/index.html.erb" do
  before(:each) do
    assign(:admission_status_types, [
      stub_model(AdmissionStatusType,
        :name => "Name"
      ),
      stub_model(AdmissionStatusType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of admission_status_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
