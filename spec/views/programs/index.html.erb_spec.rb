require 'spec_helper'

describe "programs/index.html.erb" do
  before(:each) do
    assign(:programs, [
      stub_model(Program,
        :name => "Name",
        :department_id => 1,
        :admission_id => 1,
        :total_credit_hour => 1,
        :award_type_id => 1
      ),
      stub_model(Program,
        :name => "Name",
        :department_id => 1,
        :admission_id => 1,
        :total_credit_hour => 1,
        :award_type_id => 1
      )
    ])
  end

  it "renders a list of programs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
