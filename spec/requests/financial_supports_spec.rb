require 'spec_helper'

describe "FinancialSupports" do
  describe "GET /financial_supports" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get financial_supports_path
      response.status.should be(200)
    end
  end
end
