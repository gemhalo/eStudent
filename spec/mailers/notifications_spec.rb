require "spec_helper"

describe Notifications do
  describe "forgot_password" do
    let(:mail) { Notifications.forgot_password }

    it "renders the headers" do
      mail.subject.should eq("Forgot password")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
