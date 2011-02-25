require 'spec_helper'

describe "student_service_staffs/show.html.erb" do
  before(:each) do
    @student_service_staff = assign(:student_service_staff, stub_model(StudentServiceStaff,
      :id_number => "Id Number",
      :rank => "Rank",
      :qualification_type_id => 1,
      :role_type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rank/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
