require 'spec_helper'

describe "department_choices/new.html.erb" do
  before(:each) do
    assign(:department_choice, stub_model(DepartmentChoice,
      :department_id => 1,
      :applicant_id => 1,
      :preference => 1
    ).as_new_record)
  end

  it "renders new department_choice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => department_choices_path, :method => "post" do
      assert_select "input#department_choice_department_id", :name => "department_choice[department_id]"
      assert_select "input#department_choice_applicant_id", :name => "department_choice[applicant_id]"
      assert_select "input#department_choice_preference", :name => "department_choice[preference]"
    end
  end
end
