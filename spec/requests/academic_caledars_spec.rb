require 'spec_helper'

describe "AcademicCaledars" do
  describe "GET /academic_caledars" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get academic_caledars_path
      response.status.should be(200)
    end
  end
end
