require 'spec_helper'

describe "admission_status_types/show.html.erb" do
  before(:each) do
    @admission_status_type = assign(:admission_status_type, stub_model(AdmissionStatusType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
