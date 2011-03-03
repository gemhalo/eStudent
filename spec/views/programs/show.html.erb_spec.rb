require 'spec_helper'

describe "programs/show.html.erb" do
  before(:each) do
    @program = assign(:program, stub_model(Program,
      :program_id => "Program",
      :program_name => "Program Name",
      :level => "Level",
      :enrollment_type => 1,
      :mode => "Mode",
      :award_type => "Award Type",
      :duration => "Duration",
      :total_credit_hour => 1,
      :department_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Program/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Program Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Level/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mode/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Award Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Duration/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
