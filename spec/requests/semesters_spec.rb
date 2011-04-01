require 'spec_helper'

describe "Semesters" do
  describe "GET /semesters" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get semesters_path
      response.status.should be(200)
    end
  end
end
