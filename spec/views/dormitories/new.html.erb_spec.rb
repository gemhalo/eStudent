require 'spec_helper'

describe "dormitories/new.html.erb" do
  before(:each) do
    assign(:dormitory, stub_model(Dormitory,
      :student_id => 1,
      :room_id => 1,
      :bed_number => "MyString"
    ).as_new_record)
  end

  it "renders new dormitory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dormitories_path, :method => "post" do
      assert_select "input#dormitory_student_id", :name => "dormitory[student_id]"
      assert_select "input#dormitory_room_id", :name => "dormitory[room_id]"
      assert_select "input#dormitory_bed_number", :name => "dormitory[bed_number]"
    end
  end
end
