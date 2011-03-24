require 'spec_helper'

describe "programs/edit.html.erb" do
  before(:each) do
    @program = assign(:program, stub_model(Program,
      :name => "MyString",
      :department_id => 1,
      :admission_id => 1,
      :total_credit_hour => 1,
      :award_type_id => 1
    ))
  end

  it "renders the edit program form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => programs_path(@program), :method => "post" do
      assert_select "input#program_name", :name => "program[name]"
      assert_select "input#program_department_id", :name => "program[department_id]"
      assert_select "input#program_admission_id", :name => "program[admission_id]"
      assert_select "input#program_total_credit_hour", :name => "program[total_credit_hour]"
      assert_select "input#program_award_type_id", :name => "program[award_type_id]"
    end
  end
end
