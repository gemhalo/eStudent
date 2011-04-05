require 'spec_helper'

describe "assign_instructors/show.html.erb" do
  before(:each) do
    @assign_instructor = assign(:assign_instructor, stub_model(AssignInstructor,
      :offered_course_id => 1,
      :instructor_id => 1,
      :section => "Section"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Section/)
  end
end
