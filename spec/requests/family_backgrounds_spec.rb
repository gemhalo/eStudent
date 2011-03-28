require 'spec_helper'

describe "FamilyBackgrounds" do
  describe "GET /family_backgrounds" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get family_backgrounds_path
      response.status.should be(200)
    end
  end
end
