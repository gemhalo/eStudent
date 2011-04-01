require 'spec_helper'

describe "OfferedCourses" do
  describe "GET /offered_courses" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get offered_courses_path
      response.status.should be(200)
    end
  end
end
