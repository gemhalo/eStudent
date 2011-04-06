require 'spec_helper'

describe "assign_instructors/index.html.erb" do
  before(:each) do
    assign(:assign_instructors, [
      stub_model(AssignInstructor,
        :offered_course_id => 1,
        :instructor_id => 1,
        :section => "Section"
      ),
      stub_model(AssignInstructor,
        :offered_course_id => 1,
        :instructor_id => 1,
        :section => "Section"
      )
    ])
  end

  it "renders a list of assign_instructors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Section".to_s, :count => 2
  end
end
