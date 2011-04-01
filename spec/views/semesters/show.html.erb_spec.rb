require 'spec_helper'

describe "semesters/show.html.erb" do
  before(:each) do
    @semester = assign(:semester, stub_model(Semester,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
