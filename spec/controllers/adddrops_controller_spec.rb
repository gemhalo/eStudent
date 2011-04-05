require 'spec_helper'

describe AdddropsController do

  describe "GET 'add'" do
    it "should be successful" do
      get 'add'
      response.should be_success
    end
  end

  describe "GET 'drop'" do
    it "should be successful" do
      get 'drop'
      response.should be_success
    end
  end

  describe "GET 'approve'" do
    it "should be successful" do
      get 'approve'
      response.should be_success
    end
  end

end
