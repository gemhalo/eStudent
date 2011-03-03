require 'spec_helper'

describe "programs/edit.html.erb" do
  before(:each) do
    @program = assign(:program, stub_model(Program,
      :program_id => "MyString",
      :program_name => "MyString",
      :level => "MyString",
      :enrollment_type => 1,
      :mode => "MyString",
      :award_type => "MyString",
      :duration => "MyString",
      :total_credit_hour => 1,
      :department_id => 1
    ))
  end

  it "renders the edit program form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => programs_path(@program), :method => "post" do
      assert_select "input#program_program_id", :name => "program[program_id]"
      assert_select "input#program_program_name", :name => "program[program_name]"
      assert_select "input#program_level", :name => "program[level]"
      assert_select "input#program_enrollment_type", :name => "program[enrollment_type]"
      assert_select "input#program_mode", :name => "program[mode]"
      assert_select "input#program_award_type", :name => "program[award_type]"
      assert_select "input#program_duration", :name => "program[duration]"
      assert_select "input#program_total_credit_hour", :name => "program[total_credit_hour]"
      assert_select "input#program_department_id", :name => "program[department_id]"
    end
  end
end
