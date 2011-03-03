require 'spec_helper'

describe "departments/edit.html.erb" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :name => "MyString",
      :college_id => 1,
      :telephone => 1,
      :pobox => "MyString",
      :email => "MyString",
      :instructor_id => 1
    ))
  end

  it "renders the edit department form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => departments_path(@department), :method => "post" do
      assert_select "input#department_name", :name => "department[name]"
      assert_select "input#department_college_id", :name => "department[college_id]"
      assert_select "input#department_telephone", :name => "department[telephone]"
      assert_select "input#department_pobox", :name => "department[pobox]"
      assert_select "input#department_email", :name => "department[email]"
      assert_select "input#department_instructor_id", :name => "department[instructor_id]"
    end
  end
end
