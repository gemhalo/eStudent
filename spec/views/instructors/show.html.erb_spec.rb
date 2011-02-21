require 'spec_helper'

describe "instructors/show.html.erb" do
  before(:each) do
    @instructor = assign(:instructor, stub_model(Instructor,
      :id_number => "Id Number",
      :academic_rank => "Academic Rank",
      :specialization => "Specialization",
      :role_id => 1,
      :department_id => 1,
      :person_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Academic Rank/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Specialization/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
