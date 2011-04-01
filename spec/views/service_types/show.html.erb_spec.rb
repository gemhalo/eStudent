require 'spec_helper'

describe "service_types/show.html.erb" do
  before(:each) do
    @service_type = assign(:service_type, stub_model(ServiceType,
      :service_name => "Service Name",
      :type => "Type",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Service Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
