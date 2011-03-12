require 'spec_helper'

describe "department_choices/index.html.erb" do
  before(:each) do
    assign(:department_choices, [
      stub_model(DepartmentChoice,
        :department_id => 1,
        :applicant_id => 1,
        :preference => 1
      ),
      stub_model(DepartmentChoice,
        :department_id => 1,
        :applicant_id => 1,
        :preference => 1
      )
    ])
  end

  it "renders a list of department_choices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
