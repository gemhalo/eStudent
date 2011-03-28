require 'spec_helper'

describe "DepartmentQuotas" do
  describe "GET /department_quotas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get department_quotas_path
      response.status.should be(200)
    end
  end
end
