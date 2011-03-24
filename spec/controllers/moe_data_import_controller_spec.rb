require 'spec_helper'

describe MoeDataImportController do

  describe "GET 'import'" do
    it "should be successful" do
      get 'import'
      response.should be_success
    end
  end

  describe "GET 'upload'" do
    it "should be successful" do
      get 'upload'
      response.should be_success
    end
  end

end
