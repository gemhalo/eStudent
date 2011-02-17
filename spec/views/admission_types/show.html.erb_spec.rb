require 'spec_helper'

describe "admission_types/show.html.erb" do
  before(:each) do
    @admission_type = assign(:admission_type, stub_model(AdmissionType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
