require 'spec_helper'

describe "department_quotas/show.html.erb" do
  before(:each) do
    @department_quota = assign(:department_quota, stub_model(DepartmentQuota,
      :department_id => 1,
      :total_quota => 1,
      :female_percentage => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
