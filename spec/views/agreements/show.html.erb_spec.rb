require 'spec_helper'

describe "agreements/show.html.erb" do
  before(:each) do
    @agreement = assign(:agreement, stub_model(Agreement,
      :agreement => false,
      :applicant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
