require 'spec_helper'

describe "nationalities/show.html.erb" do
  before(:each) do
    @nationality = assign(:nationality, stub_model(Nationality,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
