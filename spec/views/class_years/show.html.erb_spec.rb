require 'spec_helper'

describe "class_years/show.html.erb" do
  before(:each) do
    @class_year = assign(:class_year, stub_model(ClassYear,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
