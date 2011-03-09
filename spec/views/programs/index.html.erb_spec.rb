require 'spec_helper'

describe "programs/index.html.erb" do
  before(:each) do
    assign(:programs, [
      stub_model(Program,
        :program_id => "Program",
        :program_name => "Program Name",
        :level => "Level",
        :enrollment_type => 1,
        :mode => "Mode",
        :award_type => "Award Type",
        :duration => "Duration",
        :total_credit_hour => 1,
        :department_id => 1
      ),
      stub_model(Program,
        :program_id => "Program",
        :program_name => "Program Name",
        :level => "Level",
        :enrollment_type => 1,
        :mode => "Mode",
        :award_type => "Award Type",
        :duration => "Duration",
        :total_credit_hour => 1,
        :department_id => 1
      )
    ])
  end

  it "renders a list of programs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Program".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Program Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Level".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mode".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Award Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
