require 'spec_helper'

describe "AdmissionTypes" do
  describe "GET /admission_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get admission_types_path
      response.status.should be(200)
    end
  end
end
