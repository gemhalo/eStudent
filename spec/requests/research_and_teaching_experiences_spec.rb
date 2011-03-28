require 'spec_helper'

describe "ResearchAndTeachingExperiences" do
  describe "GET /research_and_teaching_experiences" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get research_and_teaching_experiences_path
      response.status.should be(200)
    end
  end
end
