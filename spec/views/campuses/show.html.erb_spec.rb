require 'spec_helper'

describe "campuses/show.html.erb" do
  before(:each) do
    @campus = assign(:campus, stub_model(Campus,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)

  end
end
