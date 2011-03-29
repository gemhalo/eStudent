require 'spec_helper'

describe "department_quotas/index.html.erb" do
  before(:each) do
    assign(:department_quotas, [
      stub_model(DepartmentQuota,
        :department_id => 1,
        :total_quota => 1,
        :female_percentage => 1
      ),
      stub_model(DepartmentQuota,
        :department_id => 1,
        :total_quota => 1,
        :female_percentage => 1
      )
    ])
  end

  it "renders a list of department_quotas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
