require 'spec_helper'

describe "dormitories/show.html.erb" do
  before(:each) do
    @dormitory = assign(:dormitory, stub_model(Dormitory,
      :student_id => 1,
      :room_id => 1,
      :bed_number => "Bed Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bed Number/)
  end
end
