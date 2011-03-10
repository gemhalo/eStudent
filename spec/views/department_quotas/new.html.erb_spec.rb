require 'spec_helper'

describe "department_quotas/new.html.erb" do
  before(:each) do
    assign(:department_quota, stub_model(DepartmentQuota,
      :department_id => 1,
      :total_quota => 1,
      :female_percentage => 1
    ).as_new_record)
  end

  it "renders new department_quota form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => department_quotas_path, :method => "post" do
      assert_select "input#department_quota_department_id", :name => "department_quota[department_id]"
      assert_select "input#department_quota_total_quota", :name => "department_quota[total_quota]"
      assert_select "input#department_quota_female_percentage", :name => "department_quota[female_percentage]"
    end
  end
end
