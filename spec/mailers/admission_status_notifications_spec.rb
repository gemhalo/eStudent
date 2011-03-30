require "spec_helper"

describe AdmissionStatusNotifications do
  describe "notification" do
    let(:mail) { AdmissionStatusNotifications.notification }

    it "renders the headers" do
      mail.subject.should eq("Notification")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
