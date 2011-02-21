require 'spec_helper'

describe "instructors/index.html.erb" do
  before(:each) do
    assign(:instructors, [
      stub_model(Instructor,
        :id_number => "Id Number",
        :academic_rank => "Academic Rank",
        :specialization => "Specialization",
        :role_id => 1,
        :department_id => 1,
        :person_id => 1
      ),
      stub_model(Instructor,
        :id_number => "Id Number",
        :academic_rank => "Academic Rank",
        :specialization => "Specialization",
        :role_id => 1,
        :department_id => 1,
        :person_id => 1
      )
    ])
  end

  it "renders a list of instructors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Academic Rank".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Specialization".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
