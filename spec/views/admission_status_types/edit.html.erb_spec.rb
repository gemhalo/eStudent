require 'spec_helper'

describe "admission_status_types/edit.html.erb" do
  before(:each) do
    @admission_status_type = assign(:admission_status_type, stub_model(AdmissionStatusType,
      :name => "MyString"
    ))
  end

  it "renders the edit admission_status_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admission_status_types_path(@admission_status_type), :method => "post" do
      assert_select "input#admission_status_type_name", :name => "admission_status_type[name]"
    end
  end
end
