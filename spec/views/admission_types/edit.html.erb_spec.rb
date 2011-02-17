require 'spec_helper'

describe "admission_types/edit.html.erb" do
  before(:each) do
    @admission_type = assign(:admission_type, stub_model(AdmissionType,
      :name => "MyString"
    ))
  end

  it "renders the edit admission_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admission_types_path(@admission_type), :method => "post" do
      assert_select "input#admission_type_name", :name => "admission_type[name]"
    end
  end
end
