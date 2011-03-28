require 'spec_helper'

describe "admission_status_types/new.html.erb" do
  before(:each) do
    assign(:admission_status_type, stub_model(AdmissionStatusType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new admission_status_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admission_status_types_path, :method => "post" do
      assert_select "input#admission_status_type_name", :name => "admission_status_type[name]"
    end
  end
end
