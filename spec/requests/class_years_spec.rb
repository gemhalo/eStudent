require 'spec_helper'

describe "ClassYears" do
  describe "GET /class_years" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get class_years_path
      response.status.should be(200)
    end
  end
end
