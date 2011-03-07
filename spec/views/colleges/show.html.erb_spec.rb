require 'spec_helper'

describe "colleges/show.html.erb" do
  before(:each) do
    @college = assign(:college, stub_model(College,
      :name => "Name",
      :campus_id => 1,
      :college_telephone => 1,
      :college_pobox => "College Pobox",
      :college_email => "College Email",
      :instructor_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/College Pobox/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/College Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
