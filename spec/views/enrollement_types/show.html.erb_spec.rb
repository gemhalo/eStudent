require 'spec_helper'

describe "enrollement_types/show.html.erb" do
  before(:each) do
    @enrollement_type = assign(:enrollement_type, stub_model(EnrollementType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
