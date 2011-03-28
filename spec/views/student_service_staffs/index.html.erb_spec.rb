require 'spec_helper'

describe "student_service_staffs/index.html.erb" do
  before(:each) do
    assign(:student_service_staffs, [
      stub_model(StudentServiceStaff,
        :id_number => "Id Number",
        :rank => "Rank",
        :qualification_type_id => 1,
        :role_type_id => 1
      ),
      stub_model(StudentServiceStaff,
        :id_number => "Id Number",
        :rank => "Rank",
        :qualification_type_id => 1,
        :role_type_id => 1
      )
    ])
  end

  it "renders a list of student_service_staffs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rank".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
