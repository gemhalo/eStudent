require 'spec_helper'

describe "HowTos" do
  describe "GET /how_tos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get how_tos_path
      response.status.should be(200)
    end
  end
end
