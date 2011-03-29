require 'spec_helper'

describe "award_types/show.html.erb" do
  before(:each) do
    @award_type = assign(:award_type, stub_model(AwardType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
