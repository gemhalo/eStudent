require 'spec_helper'

describe "enrollment_mode_types/edit.html.erb" do
  before(:each) do
    @enrollment_mode_type = assign(:enrollment_mode_type, stub_model(EnrollmentModeType,
      :name => "MyString"
    ))
  end

  it "renders the edit enrollment_mode_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enrollment_mode_types_path(@enrollment_mode_type), :method => "post" do
      assert_select "input#enrollment_mode_type_name", :name => "enrollment_mode_type[name]"
    end
  end
end
