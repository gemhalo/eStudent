require 'spec_helper'

describe "AcademicCalendars" do
  describe "GET /academic_calendars" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get academic_calendars_path
      response.status.should be(200)
    end
  end
end
