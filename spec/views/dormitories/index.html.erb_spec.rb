require 'spec_helper'

describe "dormitories/index.html.erb" do
  before(:each) do
    assign(:dormitories, [
      stub_model(Dormitory,
        :student_id => 1,
        :room_id => 1,
        :bed_number => "Bed Number"
      ),
      stub_model(Dormitory,
        :student_id => 1,
        :room_id => 1,
        :bed_number => "Bed Number"
      )
    ])
  end

  it "renders a list of dormitories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bed Number".to_s, :count => 2
  end
end
