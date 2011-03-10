require 'spec_helper'

describe "departments/show.html.erb" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :name => "Name",
      :college_id => 1,
      :dept_head => "Dept Head"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dept Head/)
  end
end
