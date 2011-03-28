require 'spec_helper'

describe AdmissionStatusNotficationInputsController do

  describe "GET 'Send'" do
    it "should be successful" do
      get 'Send'
      response.should be_success
    end
  end

end
