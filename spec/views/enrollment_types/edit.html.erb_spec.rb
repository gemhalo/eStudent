require 'spec_helper'

describe "enrollment_types/edit.html.erb" do
  before(:each) do
    @enrollment_type = assign(:enrollment_type, stub_model(EnrollmentType,
      :name => "MyString"
    ))
  end

  it "renders the edit enrollment_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enrollment_types_path(@enrollment_type), :method => "post" do
      assert_select "input#enrollment_type_name", :name => "enrollment_type[name]"
    end
  end
end
