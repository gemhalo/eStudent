require 'spec_helper'

describe "enrollment_mode_types/show.html.erb" do
  before(:each) do
    @enrollment_mode_type = assign(:enrollment_mode_type, stub_model(EnrollmentModeType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
