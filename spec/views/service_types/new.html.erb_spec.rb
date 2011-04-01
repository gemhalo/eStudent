require 'spec_helper'

describe "service_types/new.html.erb" do
  before(:each) do
    assign(:service_type, stub_model(ServiceType,
      :service_name => "MyString",
      :type => "MyString",
      :price => 1.5
    ).as_new_record)
  end

  it "renders new service_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_types_path, :method => "post" do
      assert_select "input#service_type_service_name", :name => "service_type[service_name]"
      assert_select "input#service_type_type", :name => "service_type[type]"
      assert_select "input#service_type_price", :name => "service_type[price]"
    end
  end
end
