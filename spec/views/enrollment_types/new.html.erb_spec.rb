require 'spec_helper'

describe "enrollment_types/new.html.erb" do
  before(:each) do
    assign(:enrollment_type, stub_model(EnrollmentType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new enrollment_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enrollment_types_path, :method => "post" do
      assert_select "input#enrollment_type_name", :name => "enrollment_type[name]"
    end
  end
end
