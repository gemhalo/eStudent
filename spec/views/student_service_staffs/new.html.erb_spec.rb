require 'spec_helper'

describe "student_service_staffs/new.html.erb" do
  before(:each) do
    assign(:student_service_staff, stub_model(StudentServiceStaff,
      :id_number => "MyString",
      :rank => "MyString",
      :qualification_type_id => 1,
      :role_type_id => 1
    ).as_new_record)
  end

  it "renders new student_service_staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_service_staffs_path, :method => "post" do
      assert_select "input#student_service_staff_id_number", :name => "student_service_staff[id_number]"
      assert_select "input#student_service_staff_rank", :name => "student_service_staff[rank]"
      assert_select "input#student_service_staff_qualification_type_id", :name => "student_service_staff[qualification_type_id]"
      assert_select "input#student_service_staff_role_type_id", :name => "student_service_staff[role_type_id]"
    end
  end
end
