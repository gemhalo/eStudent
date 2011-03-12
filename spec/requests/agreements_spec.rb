require 'spec_helper'

describe "Agreements" do
  describe "GET /agreements" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get agreements_path
      response.status.should be(200)
    end
  end
end
