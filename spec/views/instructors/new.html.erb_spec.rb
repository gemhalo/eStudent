require 'spec_helper'

describe "instructors/new.html.erb" do
  before(:each) do
    assign(:instructor, stub_model(Instructor,
      :id_number => "MyString",
      :academic_rank => "MyString",
      :specialization => "MyString",
      :role_id => 1,
      :department_id => 1,
      :person_id => 1
    ).as_new_record)
  end

  it "renders new instructor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instructors_path, :method => "post" do
      assert_select "input#instructor_id_number", :name => "instructor[id_number]"
      assert_select "input#instructor_academic_rank", :name => "instructor[academic_rank]"
      assert_select "input#instructor_specialization", :name => "instructor[specialization]"
      assert_select "input#instructor_role_id", :name => "instructor[role_id]"
      assert_select "input#instructor_department_id", :name => "instructor[department_id]"
      assert_select "input#instructor_person_id", :name => "instructor[person_id]"
    end
  end
end
