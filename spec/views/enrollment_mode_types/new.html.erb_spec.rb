require 'spec_helper'

describe "enrollment_mode_types/new.html.erb" do
  before(:each) do
    assign(:enrollment_mode_type, stub_model(EnrollmentModeType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new enrollment_mode_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enrollment_mode_types_path, :method => "post" do
      assert_select "input#enrollment_mode_type_name", :name => "enrollment_mode_type[name]"
    end
  end
end
