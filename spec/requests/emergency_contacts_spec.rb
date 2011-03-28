require 'spec_helper'

describe "EmergencyContacts" do
  describe "GET /emergency_contacts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get emergency_contacts_path
      response.status.should be(200)
    end
  end
end
