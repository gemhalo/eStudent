require 'spec_helper'

describe "colleges/index.html.erb" do
  before(:each) do
    assign(:colleges, [
      stub_model(College,
        :name => "Name",
        :campus_id => 1,
        :college_telephone => 1,
        :college_pobox => "College Pobox",
        :college_email => "College Email",
        :instructor_id => 1
      ),
      stub_model(College,
        :name => "Name",
        :campus_id => 1,
        :college_telephone => 1,
        :college_pobox => "College Pobox",
        :college_email => "College Email",
        :instructor_id => 1
      )
    ])
  end

  it "renders a list of colleges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "College Pobox".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "College Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
