require 'spec_helper'

describe User do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "A user must have a username" do
    user = User.new
    user.username.should_not be_nil

    #Factory.create(:user)

  end
end

