require 'spec_helper'

describe "dormitories/edit.html.erb" do
  before(:each) do
    @dormitory = assign(:dormitory, stub_model(Dormitory,
      :student_id => 1,
      :room_id => 1,
      :bed_number => "MyString"
    ))
  end

  it "renders the edit dormitory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dormitories_path(@dormitory), :method => "post" do
      assert_select "input#dormitory_student_id", :name => "dormitory[student_id]"
      assert_select "input#dormitory_room_id", :name => "dormitory[room_id]"
      assert_select "input#dormitory_bed_number", :name => "dormitory[bed_number]"
    end
  end
end
