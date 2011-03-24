require 'spec_helper'

describe "CourseExemptions" do
  describe "GET /course_exemptions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get course_exemptions_path
      response.status.should be(200)
    end
  end
end
