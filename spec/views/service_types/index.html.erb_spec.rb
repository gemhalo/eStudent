require 'spec_helper'

describe "service_types/index.html.erb" do
  before(:each) do
    assign(:service_types, [
      stub_model(ServiceType,
        :service_name => "Service Name",
        :type => "Type",
        :price => 1.5
      ),
      stub_model(ServiceType,
        :service_name => "Service Name",
        :type => "Type",
        :price => 1.5
      )
    ])
  end

  it "renders a list of service_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Service Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
