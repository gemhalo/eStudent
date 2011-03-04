require 'spec_helper'

describe "departments/edit.html.erb" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :name => "MyString",
      :college_id => 1
    ))
  end

  it "renders the edit department form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => departments_path(@department), :method => "post" do
      assert_select "input#department_name", :name => "department[name]"
      assert_select "input#department_college_id", :name => "department[college_id]"
    end
  end
end
